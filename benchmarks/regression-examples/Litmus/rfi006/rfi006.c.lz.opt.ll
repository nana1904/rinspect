; ModuleID = '../examples/tso/regression-examples/rfi006/rfi006.c.lz.opt.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%union.pthread_attr_t = type { i32, [32 x i8] }

@x = common global i32 0, align 4
@y = common global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"\0A %%%% (EAX1=%d, EBX1=%d) %%%%\00", align 1
@.str1 = private unnamed_addr constant [37 x i8] c"\0A@@@CLAP: There is a SC violation! \0A\00", align 1
@.str2 = private unnamed_addr constant [30 x i8] c"\1B[1;31m SC Violation!!! \1B[0m\0A\00", align 1
@z = common global i32 0, align 4

define i8* @P0(i8* %arg) nounwind {
entry:
  %arg.addr = alloca i8*, align 4, !clap !24
  %EAX = alloca i32, align 4, !clap !25
  %EBX = alloca i32, align 4, !clap !26
  store i8* %arg, i8** %arg.addr, align 4, !clap !27
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !28), !dbg !29, !clap !30
  call void @llvm.dbg.declare(metadata !{i32* %EAX}, metadata !31), !dbg !33, !clap !34
  call void @llvm.dbg.declare(metadata !{i32* %EBX}, metadata !35), !dbg !36, !clap !37
  call void (i32, ...)* @clap_load_pre(i32 4, i32* @x, i32 0, i32 32, i32 8)
  %tmp = load i32* @x, align 4, !dbg !38, !clap !39
  call void (i32, ...)* @clap_load_post(i32 4, i32* @x, i32 0, i32 32, i32 8)
  store i32 %tmp, i32* %EAX, align 4, !dbg !38, !clap !40
  call void (i32, ...)* @clap_store_pre(i32 5, i32* @y, i32 1, i32 0, i32 32, i32 10)
  store i32 1, i32* @y, align 4, !dbg !41, !clap !42
  call void (i32, ...)* @clap_store_post(i32 5, i32* @y, i32 1, i32 0, i32 32, i32 10)
  %tmp1 = load i32* %EAX, align 4, !dbg !43, !clap !44
  %cmp = icmp eq i32 %tmp1, 1, !dbg !43, !clap !45
  %conv = zext i1 %cmp to i32, !dbg !43, !clap !46
  %tmp2 = inttoptr i32 %conv to i8*, !dbg !43, !clap !47
  ret i8* %tmp2, !dbg !43, !clap !48
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define i8* @P1(i8* %arg) nounwind {
entry:
  %arg.addr = alloca i8*, align 4, !clap !49
  %EAX = alloca i32, align 4, !clap !50
  %EBX = alloca i32, align 4, !clap !51
  store i8* %arg, i8** %arg.addr, align 4, !clap !52
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !53), !dbg !54, !clap !55
  call void @llvm.dbg.declare(metadata !{i32* %EAX}, metadata !56), !dbg !58, !clap !59
  call void @llvm.dbg.declare(metadata !{i32* %EBX}, metadata !60), !dbg !61, !clap !62
  call void (i32, ...)* @clap_store_pre(i32 5, i32* @y, i32 2, i32 0, i32 32, i32 23)
  store i32 2, i32* @y, align 4, !dbg !63, !clap !64
  call void (i32, ...)* @clap_store_post(i32 5, i32* @y, i32 2, i32 0, i32 32, i32 23)
  call void (i32, ...)* @clap_load_pre(i32 4, i32* @y, i32 0, i32 32, i32 24)
  %tmp = load i32* @y, align 4, !dbg !65, !clap !66
  call void (i32, ...)* @clap_load_post(i32 4, i32* @y, i32 0, i32 32, i32 24)
  store i32 %tmp, i32* %EAX, align 4, !dbg !65, !clap !67
  call void (i32, ...)* @clap_load_pre(i32 4, i32* @x, i32 0, i32 32, i32 26)
  %tmp1 = load i32* @x, align 4, !dbg !68, !clap !69
  call void (i32, ...)* @clap_load_post(i32 4, i32* @x, i32 0, i32 32, i32 26)
  store i32 %tmp1, i32* %EBX, align 4, !dbg !68, !clap !70
  %tmp2 = load i32* %EAX, align 4, !dbg !71, !clap !72
  %tmp3 = load i32* %EBX, align 4, !dbg !71, !clap !73
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str, i32 0, i32 0), i32 %tmp2, i32 %tmp3), !dbg !71, !clap !74
  %tmp4 = load i32* %EAX, align 4, !dbg !75, !clap !76
  %cmp = icmp eq i32 %tmp4, 2, !dbg !75, !clap !77
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !75, !clap !78

land.rhs:                                         ; preds = %entry
  %tmp5 = load i32* %EBX, align 4, !dbg !75, !clap !79
  %cmp1 = icmp eq i32 %tmp5, 0, !dbg !75, !clap !80
  br label %land.end, !clap !81

land.end:                                         ; preds = %land.rhs, %entry
  %tmp6 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !clap !82
  %land.ext = zext i1 %tmp6 to i32, !clap !83
  %tmp7 = inttoptr i32 %land.ext to i8*, !clap !84
  ret i8* %tmp7, !dbg !85, !clap !86
}

declare i32 @printf(i8*, ...)

define i8* @P2(i8* %arg) nounwind {
entry:
  %arg.addr = alloca i8*, align 4, !clap !87
  store i8* %arg, i8** %arg.addr, align 4, !clap !88
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !89), !dbg !90, !clap !91
  call void (i32, ...)* @clap_store_pre(i32 5, i32* @x, i32 1, i32 0, i32 32, i32 44)
  store i32 1, i32* @x, align 4, !dbg !92, !clap !94
  call void (i32, ...)* @clap_store_post(i32 5, i32* @x, i32 1, i32 0, i32 32, i32 44)
  ret i8* null, !dbg !95, !clap !96
}

define i32 @main() nounwind {
entry:
  %retval = alloca i32, align 4, !clap !97
  %t0 = alloca i32, align 4, !clap !98
  %t1 = alloca i32, align 4, !clap !99
  %t2 = alloca i32, align 4, !clap !100
  %t3 = alloca i32, align 4, !clap !101
  %cond0 = alloca i32, align 4, !clap !102
  %cond1 = alloca i32, align 4, !clap !103
  %cond2 = alloca i32, align 4, !clap !104
  %cond3 = alloca i32, align 4, !clap !105
  store i32 0, i32* %retval, !clap !106
  call void @llvm.dbg.declare(metadata !{i32* %t0}, metadata !107), !dbg !111, !clap !112
  call void @llvm.dbg.declare(metadata !{i32* %t1}, metadata !113), !dbg !114, !clap !115
  call void @llvm.dbg.declare(metadata !{i32* %t2}, metadata !116), !dbg !117, !clap !118
  call void @llvm.dbg.declare(metadata !{i32* %t3}, metadata !119), !dbg !120, !clap !121
  call void @llvm.dbg.declare(metadata !{i32* %cond0}, metadata !122), !dbg !123, !clap !124
  call void @llvm.dbg.declare(metadata !{i32* %cond1}, metadata !125), !dbg !126, !clap !127
  call void @llvm.dbg.declare(metadata !{i32* %cond2}, metadata !128), !dbg !129, !clap !130
  call void @llvm.dbg.declare(metadata !{i32* %cond3}, metadata !131), !dbg !132, !clap !133
  %call = call i32 @clap_thread_create(i32* %t0, %union.pthread_attr_t* null, i8* (i8*)* @P0, i8* null) nounwind, !dbg !134, !clap !135
  %call1 = call i32 @clap_thread_create(i32* %t1, %union.pthread_attr_t* null, i8* (i8*)* @P1, i8* null) nounwind, !dbg !136, !clap !137
  %call2 = call i32 @clap_thread_create(i32* %t2, %union.pthread_attr_t* null, i8* (i8*)* @P2, i8* null) nounwind, !dbg !138, !clap !139
  %tmp = load i32* %t0, align 4, !dbg !140, !clap !141
  %tmp1 = bitcast i32* %cond0 to i8**, !dbg !140, !clap !142
  %call3 = call i32 @clap_thread_join(i32 %tmp, i8** %tmp1), !dbg !140, !clap !143
  %tmp2 = load i32* %t1, align 4, !dbg !144, !clap !145
  %tmp3 = bitcast i32* %cond1 to i8**, !dbg !144, !clap !146
  %call4 = call i32 @clap_thread_join(i32 %tmp2, i8** %tmp3), !dbg !144, !clap !147
  %tmp4 = load i32* %t2, align 4, !dbg !148, !clap !149
  %call5 = call i32 @clap_thread_join(i32 %tmp4, i8** null), !dbg !148, !clap !150
  %tmp5 = load i32* %cond0, align 4, !dbg !151, !clap !152
  %tobool = icmp ne i32 %tmp5, 0, !dbg !151, !clap !153
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !151, !clap !154

land.lhs.true:                                    ; preds = %entry
  %tmp6 = load i32* %cond1, align 4, !dbg !151, !clap !155
  %tobool6 = icmp ne i32 %tmp6, 0, !dbg !151, !clap !156
  br i1 %tobool6, label %land.lhs.true7, label %if.end, !dbg !151, !clap !157

land.lhs.true7:                                   ; preds = %land.lhs.true
  call void (i32, ...)* @clap_load_pre(i32 4, i32* @y, i32 0, i32 32, i32 81)
  %tmp7 = load i32* @y, align 4, !dbg !151, !clap !158
  call void (i32, ...)* @clap_load_post(i32 4, i32* @y, i32 0, i32 32, i32 81)
  %cmp = icmp eq i32 %tmp7, 2, !dbg !151, !clap !159
  br i1 %cmp, label %if.then, label %if.end, !dbg !151, !clap !160

if.then:                                          ; preds = %land.lhs.true7
  %call8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str1, i32 0, i32 0)), !dbg !161, !clap !163
  %call9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str2, i32 0, i32 0)), !dbg !164, !clap !165
  br label %if.end, !dbg !166, !clap !167

if.end:                                           ; preds = %if.then, %land.lhs.true7, %land.lhs.true, %entry
  ret i32 0, !dbg !168, !clap !169
}

declare i32 @clap_thread_create(i32*, %union.pthread_attr_t*, i8* (i8*)*, i8*) nounwind

declare i32 @clap_thread_join(i32, i8**)

declare void @clap_load_pre(i32, ...)

declare void @clap_load_post(i32, ...)

declare void @clap_store_pre(i32, ...)

declare void @clap_store_post(i32, ...)

declare void @clap_cmpxchg_pre(i32, ...)

declare void @clap_cmpxchg_post(i32, ...)

declare void @clap_atomicrmw_pre(i32, ...)

declare void @clap_atomicrmw_post(i32, ...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 720913, i32 0, i32 12, metadata !"../examples/tso/regression-examples/rfi006/rfi006.c", metadata !"/home/naling/src/inspect-0.3", metadata !"clang version 3.0 (tags/RELEASE_30/final)", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !18} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !13, metadata !14}
!5 = metadata !{i32 720942, i32 0, metadata !6, metadata !"P0", metadata !"P0", metadata !"", metadata !6, i32 30, metadata !7, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i8* (i8*)* @P0, null, null, metadata !10} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 720937, metadata !"../examples/tso/regression-examples/rfi006/rfi006.c", metadata !"/home/naling/src/inspect-0.3", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9}
!9 = metadata !{i32 720911, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 720942, i32 0, metadata !6, metadata !"P1", metadata !"P1", metadata !"", metadata !6, i32 39, metadata !7, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i8* (i8*)* @P1, null, null, metadata !10} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 720942, i32 0, metadata !6, metadata !"P2", metadata !"P2", metadata !"", metadata !6, i32 48, metadata !7, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i8* (i8*)* @P2, null, null, metadata !10} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 720942, i32 0, metadata !6, metadata !"main", metadata !"main", metadata !"", metadata !6, i32 57, metadata !15, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i32 ()* @main, null, null, metadata !10} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 720932, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !20, metadata !22, metadata !23}
!20 = metadata !{i32 720948, i32 0, null, metadata !"x", metadata !"x", metadata !"", metadata !6, i32 27, metadata !21, i32 0, i32 1, i32* @x} ; [ DW_TAG_variable ]
!21 = metadata !{i32 720932, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 720948, i32 0, null, metadata !"y", metadata !"y", metadata !"", metadata !6, i32 27, metadata !21, i32 0, i32 1, i32* @y} ; [ DW_TAG_variable ]
!23 = metadata !{i32 720948, i32 0, null, metadata !"z", metadata !"z", metadata !"", metadata !6, i32 27, metadata !21, i32 0, i32 1, i32* @z} ; [ DW_TAG_variable ]
!24 = metadata !{i32 1}
!25 = metadata !{i32 2}
!26 = metadata !{i32 3}
!27 = metadata !{i32 4}
!28 = metadata !{i32 721153, metadata !5, metadata !"arg", metadata !6, i32 16777245, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 29, i32 16, metadata !5, null}
!30 = metadata !{i32 5}
!31 = metadata !{i32 721152, metadata !32, metadata !"EAX", metadata !6, i32 31, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!32 = metadata !{i32 720907, metadata !5, i32 30, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 31, i32 12, metadata !32, null}
!34 = metadata !{i32 6}
!35 = metadata !{i32 721152, metadata !32, metadata !"EBX", metadata !6, i32 31, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!36 = metadata !{i32 31, i32 17, metadata !32, null}
!37 = metadata !{i32 7}
!38 = metadata !{i32 33, i32 3, metadata !32, null}
!39 = metadata !{i32 8}
!40 = metadata !{i32 9}
!41 = metadata !{i32 34, i32 3, metadata !32, null}
!42 = metadata !{i32 10}
!43 = metadata !{i32 35, i32 3, metadata !32, null}
!44 = metadata !{i32 11}
!45 = metadata !{i32 12}
!46 = metadata !{i32 13}
!47 = metadata !{i32 14}
!48 = metadata !{i32 15}
!49 = metadata !{i32 16}
!50 = metadata !{i32 17}
!51 = metadata !{i32 18}
!52 = metadata !{i32 19}
!53 = metadata !{i32 721153, metadata !12, metadata !"arg", metadata !6, i32 16777254, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 38, i32 16, metadata !12, null}
!55 = metadata !{i32 20}
!56 = metadata !{i32 721152, metadata !57, metadata !"EAX", metadata !6, i32 40, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 720907, metadata !12, i32 39, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 40, i32 12, metadata !57, null}
!59 = metadata !{i32 21}
!60 = metadata !{i32 721152, metadata !57, metadata !"EBX", metadata !6, i32 40, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 40, i32 17, metadata !57, null}
!62 = metadata !{i32 22}
!63 = metadata !{i32 41, i32 3, metadata !57, null}
!64 = metadata !{i32 23}
!65 = metadata !{i32 42, i32 3, metadata !57, null}
!66 = metadata !{i32 24}
!67 = metadata !{i32 25}
!68 = metadata !{i32 43, i32 3, metadata !57, null}
!69 = metadata !{i32 26}
!70 = metadata !{i32 27}
!71 = metadata !{i32 44, i32 3, metadata !57, null}
!72 = metadata !{i32 28}
!73 = metadata !{i32 29}
!74 = metadata !{i32 30}
!75 = metadata !{i32 45, i32 3, metadata !57, null}
!76 = metadata !{i32 31}
!77 = metadata !{i32 32}
!78 = metadata !{i32 33}
!79 = metadata !{i32 34}
!80 = metadata !{i32 35}
!81 = metadata !{i32 36}
!82 = metadata !{i32 37}
!83 = metadata !{i32 38}
!84 = metadata !{i32 39}
!85 = metadata !{i32 46, i32 1, metadata !12, null}
!86 = metadata !{i32 40}
!87 = metadata !{i32 41}
!88 = metadata !{i32 42}
!89 = metadata !{i32 721153, metadata !13, metadata !"arg", metadata !6, i32 16777263, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 47, i32 16, metadata !13, null}
!91 = metadata !{i32 43}
!92 = metadata !{i32 50, i32 3, metadata !93, null}
!93 = metadata !{i32 720907, metadata !13, i32 48, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 44}
!95 = metadata !{i32 51, i32 3, metadata !93, null}
!96 = metadata !{i32 45}
!97 = metadata !{i32 46}
!98 = metadata !{i32 47}
!99 = metadata !{i32 48}
!100 = metadata !{i32 49}
!101 = metadata !{i32 50}
!102 = metadata !{i32 51}
!103 = metadata !{i32 52}
!104 = metadata !{i32 53}
!105 = metadata !{i32 54}
!106 = metadata !{i32 55}
!107 = metadata !{i32 721152, metadata !108, metadata !"t0", metadata !6, i32 58, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 720907, metadata !14, i32 57, i32 1, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 720918, null, metadata !"pthread_t", metadata !6, i32 60, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ]
!110 = metadata !{i32 720932, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!111 = metadata !{i32 58, i32 13, metadata !108, null}
!112 = metadata !{i32 56}
!113 = metadata !{i32 721152, metadata !108, metadata !"t1", metadata !6, i32 58, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 58, i32 17, metadata !108, null}
!115 = metadata !{i32 57}
!116 = metadata !{i32 721152, metadata !108, metadata !"t2", metadata !6, i32 58, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 58, i32 21, metadata !108, null}
!118 = metadata !{i32 58}
!119 = metadata !{i32 721152, metadata !108, metadata !"t3", metadata !6, i32 58, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 58, i32 25, metadata !108, null}
!121 = metadata !{i32 59}
!122 = metadata !{i32 721152, metadata !108, metadata !"cond0", metadata !6, i32 59, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 59, i32 12, metadata !108, null}
!124 = metadata !{i32 60}
!125 = metadata !{i32 721152, metadata !108, metadata !"cond1", metadata !6, i32 59, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 59, i32 19, metadata !108, null}
!127 = metadata !{i32 61}
!128 = metadata !{i32 721152, metadata !108, metadata !"cond2", metadata !6, i32 59, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 59, i32 26, metadata !108, null}
!130 = metadata !{i32 62}
!131 = metadata !{i32 721152, metadata !108, metadata !"cond3", metadata !6, i32 59, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 59, i32 33, metadata !108, null}
!133 = metadata !{i32 63}
!134 = metadata !{i32 61, i32 3, metadata !108, null}
!135 = metadata !{i32 64}
!136 = metadata !{i32 62, i32 3, metadata !108, null}
!137 = metadata !{i32 65}
!138 = metadata !{i32 63, i32 3, metadata !108, null}
!139 = metadata !{i32 66}
!140 = metadata !{i32 65, i32 3, metadata !108, null}
!141 = metadata !{i32 67}
!142 = metadata !{i32 68}
!143 = metadata !{i32 69}
!144 = metadata !{i32 66, i32 3, metadata !108, null}
!145 = metadata !{i32 70}
!146 = metadata !{i32 71}
!147 = metadata !{i32 72}
!148 = metadata !{i32 67, i32 3, metadata !108, null}
!149 = metadata !{i32 73}
!150 = metadata !{i32 74}
!151 = metadata !{i32 69, i32 3, metadata !108, null}
!152 = metadata !{i32 75}
!153 = metadata !{i32 76}
!154 = metadata !{i32 77}
!155 = metadata !{i32 78}
!156 = metadata !{i32 79}
!157 = metadata !{i32 80}
!158 = metadata !{i32 81}
!159 = metadata !{i32 82}
!160 = metadata !{i32 83}
!161 = metadata !{i32 70, i32 5, metadata !162, null}
!162 = metadata !{i32 720907, metadata !108, i32 69, i32 33, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 84}
!164 = metadata !{i32 71, i32 5, metadata !162, null}
!165 = metadata !{i32 85}
!166 = metadata !{i32 72, i32 3, metadata !162, null}
!167 = metadata !{i32 86}
!168 = metadata !{i32 74, i32 3, metadata !108, null}
!169 = metadata !{i32 87}
