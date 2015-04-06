; ModuleID = '../examples/tso/regression-examples/mix055/mix055.c.lz.opt.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%union.pthread_attr_t = type { i32, [32 x i8] }

@a = common global i32 0, align 4
@x = common global i32 0, align 4
@y = common global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"\0A %%%% (EAX1=%d) %%%%\0A\00", align 1
@z = common global i32 0, align 4
@.str1 = private unnamed_addr constant [23 x i8] c"\0A %%%% (EAX3=%d) %%%%\0A\00", align 1
@.str2 = private unnamed_addr constant [37 x i8] c"\0A@@@CLAP: There is a SC violation! \0A\00", align 1
@.str3 = private unnamed_addr constant [30 x i8] c"\1B[1;31m SC Violation!!! \1B[0m\0A\00", align 1

define i8* @P0(i8* %arg) nounwind {
entry:
  %arg.addr = alloca i8*, align 4, !clap !26
  %EAX = alloca i32, align 4, !clap !27
  %EBX = alloca i32, align 4, !clap !28
  store i8* %arg, i8** %arg.addr, align 4, !clap !29
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !30), !dbg !31, !clap !32
  call void @llvm.dbg.declare(metadata !{i32* %EAX}, metadata !33), !dbg !35, !clap !36
  call void @llvm.dbg.declare(metadata !{i32* %EBX}, metadata !37), !dbg !38, !clap !39
  call void (i32, ...)* @clap_store_pre(i32 5, i32* @a, i32 1, i32 0, i32 32, i32 8)
  store i32 1, i32* @a, align 4, !dbg !40, !clap !41
  call void (i32, ...)* @clap_store_post(i32 5, i32* @a, i32 1, i32 0, i32 32, i32 8)
  call void (i32, ...)* @clap_store_pre(i32 5, i32* @x, i32 1, i32 0, i32 32, i32 9)
  store i32 1, i32* @x, align 4, !dbg !42, !clap !43
  call void (i32, ...)* @clap_store_post(i32 5, i32* @x, i32 1, i32 0, i32 32, i32 9)
  ret i8* inttoptr (i32 1 to i8*), !dbg !44, !clap !45
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define i8* @P1(i8* %arg) nounwind {
entry:
  %arg.addr = alloca i8*, align 4, !clap !46
  %EAX = alloca i32, align 4, !clap !47
  %EBX = alloca i32, align 4, !clap !48
  store i8* %arg, i8** %arg.addr, align 4, !clap !49
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !50), !dbg !51, !clap !52
  call void @llvm.dbg.declare(metadata !{i32* %EAX}, metadata !53), !dbg !55, !clap !56
  call void @llvm.dbg.declare(metadata !{i32* %EBX}, metadata !57), !dbg !58, !clap !59
  call void (i32, ...)* @clap_store_pre(i32 5, i32* @x, i32 2, i32 0, i32 32, i32 18)
  store i32 2, i32* @x, align 4, !dbg !60, !clap !61
  call void (i32, ...)* @clap_store_post(i32 5, i32* @x, i32 2, i32 0, i32 32, i32 18)
  call void (i32, ...)* @clap_load_pre(i32 4, i32* @y, i32 0, i32 32, i32 19)
  %tmp = load i32* @y, align 4, !dbg !62, !clap !63
  call void (i32, ...)* @clap_load_post(i32 4, i32* @y, i32 0, i32 32, i32 19)
  store i32 %tmp, i32* %EAX, align 4, !dbg !62, !clap !64
  %tmp1 = load i32* %EAX, align 4, !dbg !65, !clap !66
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0), i32 %tmp1), !dbg !65, !clap !67
  %tmp2 = load i32* %EAX, align 4, !dbg !68, !clap !69
  %cmp = icmp eq i32 %tmp2, 0, !dbg !68, !clap !70
  %conv = zext i1 %cmp to i32, !dbg !68, !clap !71
  %tmp3 = inttoptr i32 %conv to i8*, !dbg !68, !clap !72
  ret i8* %tmp3, !dbg !68, !clap !73
}

declare i32 @printf(i8*, ...)

define i8* @P2(i8* %arg) nounwind {
entry:
  %arg.addr = alloca i8*, align 4, !clap !74
  %EAX = alloca i32, align 4, !clap !75
  %EBX = alloca i32, align 4, !clap !76
  store i8* %arg, i8** %arg.addr, align 4, !clap !77
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !78), !dbg !79, !clap !80
  call void @llvm.dbg.declare(metadata !{i32* %EAX}, metadata !81), !dbg !83, !clap !84
  call void @llvm.dbg.declare(metadata !{i32* %EBX}, metadata !85), !dbg !86, !clap !87
  call void (i32, ...)* @clap_store_pre(i32 5, i32* @y, i32 1, i32 0, i32 32, i32 35)
  store i32 1, i32* @y, align 4, !dbg !88, !clap !89
  call void (i32, ...)* @clap_store_post(i32 5, i32* @y, i32 1, i32 0, i32 32, i32 35)
  call void (i32, ...)* @clap_store_pre(i32 5, i32* @z, i32 1, i32 0, i32 32, i32 36)
  store i32 1, i32* @z, align 4, !dbg !90, !clap !91
  call void (i32, ...)* @clap_store_post(i32 5, i32* @z, i32 1, i32 0, i32 32, i32 36)
  ret i8* inttoptr (i32 1 to i8*), !dbg !92, !clap !93
}

define i8* @P3(i8* %arg) nounwind {
entry:
  %arg.addr = alloca i8*, align 4, !clap !94
  %EAX = alloca i32, align 4, !clap !95
  %EBX = alloca i32, align 4, !clap !96
  store i8* %arg, i8** %arg.addr, align 4, !clap !97
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !98), !dbg !99, !clap !100
  call void @llvm.dbg.declare(metadata !{i32* %EAX}, metadata !101), !dbg !103, !clap !104
  call void @llvm.dbg.declare(metadata !{i32* %EBX}, metadata !105), !dbg !106, !clap !107
  call void (i32, ...)* @clap_store_pre(i32 5, i32* @z, i32 2, i32 0, i32 32, i32 45)
  store i32 2, i32* @z, align 4, !dbg !108, !clap !109
  call void (i32, ...)* @clap_store_post(i32 5, i32* @z, i32 2, i32 0, i32 32, i32 45)
  call void (i32, ...)* @clap_load_pre(i32 4, i32* @a, i32 0, i32 32, i32 46)
  %tmp = load i32* @a, align 4, !dbg !110, !clap !111
  call void (i32, ...)* @clap_load_post(i32 4, i32* @a, i32 0, i32 32, i32 46)
  store i32 %tmp, i32* %EAX, align 4, !dbg !110, !clap !112
  %tmp1 = load i32* %EAX, align 4, !dbg !113, !clap !114
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), i32 %tmp1), !dbg !113, !clap !115
  %tmp2 = load i32* %EAX, align 4, !dbg !116, !clap !117
  %cmp = icmp eq i32 %tmp2, 0, !dbg !116, !clap !118
  %conv = zext i1 %cmp to i32, !dbg !116, !clap !119
  %tmp3 = inttoptr i32 %conv to i8*, !dbg !116, !clap !120
  ret i8* %tmp3, !dbg !116, !clap !121
}

define i32 @main() nounwind {
entry:
  %retval = alloca i32, align 4, !clap !122
  %t0 = alloca i32, align 4, !clap !123
  %t1 = alloca i32, align 4, !clap !124
  %t2 = alloca i32, align 4, !clap !125
  %t3 = alloca i32, align 4, !clap !126
  %cond0 = alloca i32, align 4, !clap !127
  %cond1 = alloca i32, align 4, !clap !128
  %cond2 = alloca i32, align 4, !clap !129
  %cond3 = alloca i32, align 4, !clap !130
  store i32 0, i32* %retval, !clap !131
  call void @llvm.dbg.declare(metadata !{i32* %t0}, metadata !132), !dbg !136, !clap !137
  call void @llvm.dbg.declare(metadata !{i32* %t1}, metadata !138), !dbg !139, !clap !140
  call void @llvm.dbg.declare(metadata !{i32* %t2}, metadata !141), !dbg !142, !clap !143
  call void @llvm.dbg.declare(metadata !{i32* %t3}, metadata !144), !dbg !145, !clap !146
  call void @llvm.dbg.declare(metadata !{i32* %cond0}, metadata !147), !dbg !148, !clap !149
  call void @llvm.dbg.declare(metadata !{i32* %cond1}, metadata !150), !dbg !151, !clap !152
  call void @llvm.dbg.declare(metadata !{i32* %cond2}, metadata !153), !dbg !154, !clap !155
  call void @llvm.dbg.declare(metadata !{i32* %cond3}, metadata !156), !dbg !157, !clap !158
  %call = call i32 @clap_thread_create(i32* %t0, %union.pthread_attr_t* null, i8* (i8*)* @P0, i8* null) nounwind, !dbg !159, !clap !160
  %call1 = call i32 @clap_thread_create(i32* %t1, %union.pthread_attr_t* null, i8* (i8*)* @P1, i8* null) nounwind, !dbg !161, !clap !162
  %call2 = call i32 @clap_thread_create(i32* %t2, %union.pthread_attr_t* null, i8* (i8*)* @P2, i8* null) nounwind, !dbg !163, !clap !164
  %call3 = call i32 @clap_thread_create(i32* %t3, %union.pthread_attr_t* null, i8* (i8*)* @P3, i8* null) nounwind, !dbg !165, !clap !166
  %tmp = load i32* %t0, align 4, !dbg !167, !clap !168
  %tmp1 = bitcast i32* %cond0 to i8**, !dbg !167, !clap !169
  %call4 = call i32 @clap_thread_join(i32 %tmp, i8** %tmp1), !dbg !167, !clap !170
  %tmp2 = load i32* %t1, align 4, !dbg !171, !clap !172
  %tmp3 = bitcast i32* %cond1 to i8**, !dbg !171, !clap !173
  %call5 = call i32 @clap_thread_join(i32 %tmp2, i8** %tmp3), !dbg !171, !clap !174
  %tmp4 = load i32* %t2, align 4, !dbg !175, !clap !176
  %tmp5 = bitcast i32* %cond2 to i8**, !dbg !175, !clap !177
  %call6 = call i32 @clap_thread_join(i32 %tmp4, i8** %tmp5), !dbg !175, !clap !178
  %tmp6 = load i32* %t3, align 4, !dbg !179, !clap !180
  %tmp7 = bitcast i32* %cond3 to i8**, !dbg !179, !clap !181
  %call7 = call i32 @clap_thread_join(i32 %tmp6, i8** %tmp7), !dbg !179, !clap !182
  call void (i32, ...)* @clap_load_pre(i32 4, i32* @x, i32 0, i32 32, i32 89)
  %tmp8 = load i32* @x, align 4, !dbg !183, !clap !184
  call void (i32, ...)* @clap_load_post(i32 4, i32* @x, i32 0, i32 32, i32 89)
  %cmp = icmp eq i32 %tmp8, 2, !dbg !183, !clap !185
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !183, !clap !186

land.lhs.true:                                    ; preds = %entry
  call void (i32, ...)* @clap_load_pre(i32 4, i32* @z, i32 0, i32 32, i32 92)
  %tmp9 = load i32* @z, align 4, !dbg !183, !clap !187
  call void (i32, ...)* @clap_load_post(i32 4, i32* @z, i32 0, i32 32, i32 92)
  %cmp8 = icmp eq i32 %tmp9, 2, !dbg !183, !clap !188
  br i1 %cmp8, label %land.lhs.true9, label %if.end, !dbg !183, !clap !189

land.lhs.true9:                                   ; preds = %land.lhs.true
  %tmp10 = load i32* %cond1, align 4, !dbg !183, !clap !190
  %tobool = icmp ne i32 %tmp10, 0, !dbg !183, !clap !191
  br i1 %tobool, label %land.lhs.true10, label %if.end, !dbg !183, !clap !192

land.lhs.true10:                                  ; preds = %land.lhs.true9
  %tmp11 = load i32* %cond3, align 4, !dbg !183, !clap !193
  %tobool11 = icmp ne i32 %tmp11, 0, !dbg !183, !clap !194
  br i1 %tobool11, label %if.then, label %if.end, !dbg !183, !clap !195

if.then:                                          ; preds = %land.lhs.true10
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str2, i32 0, i32 0)), !dbg !196, !clap !198
  %call13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str3, i32 0, i32 0)), !dbg !199, !clap !200
  br label %if.end, !dbg !201, !clap !202

if.end:                                           ; preds = %if.then, %land.lhs.true10, %land.lhs.true9, %land.lhs.true, %entry
  ret i32 0, !dbg !203, !clap !204
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

!0 = metadata !{i32 720913, i32 0, i32 12, metadata !"../examples/tso/regression-examples/mix055/mix055.c", metadata !"/home/naling/src/inspect-0.3", metadata !"clang version 3.0 (tags/RELEASE_30/final)", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !19} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !13, metadata !14, metadata !15}
!5 = metadata !{i32 720942, i32 0, metadata !6, metadata !"P0", metadata !"P0", metadata !"", metadata !6, i32 31, metadata !7, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i8* (i8*)* @P0, null, null, metadata !10} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 720937, metadata !"../examples/tso/regression-examples/mix055/mix055.c", metadata !"/home/naling/src/inspect-0.3", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9}
!9 = metadata !{i32 720911, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 720942, i32 0, metadata !6, metadata !"P1", metadata !"P1", metadata !"", metadata !6, i32 39, metadata !7, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i8* (i8*)* @P1, null, null, metadata !10} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 720942, i32 0, metadata !6, metadata !"P2", metadata !"P2", metadata !"", metadata !6, i32 48, metadata !7, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i8* (i8*)* @P2, null, null, metadata !10} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 720942, i32 0, metadata !6, metadata !"P3", metadata !"P3", metadata !"", metadata !6, i32 56, metadata !7, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i8* (i8*)* @P3, null, null, metadata !10} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 720942, i32 0, metadata !6, metadata !"main", metadata !"main", metadata !"", metadata !6, i32 65, metadata !16, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i32 ()* @main, null, null, metadata !10} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 720932, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !21, metadata !23, metadata !24, metadata !25}
!21 = metadata !{i32 720948, i32 0, null, metadata !"a", metadata !"a", metadata !"", metadata !6, i32 28, metadata !22, i32 0, i32 1, i32* @a} ; [ DW_TAG_variable ]
!22 = metadata !{i32 720932, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 720948, i32 0, null, metadata !"x", metadata !"x", metadata !"", metadata !6, i32 28, metadata !22, i32 0, i32 1, i32* @x} ; [ DW_TAG_variable ]
!24 = metadata !{i32 720948, i32 0, null, metadata !"y", metadata !"y", metadata !"", metadata !6, i32 28, metadata !22, i32 0, i32 1, i32* @y} ; [ DW_TAG_variable ]
!25 = metadata !{i32 720948, i32 0, null, metadata !"z", metadata !"z", metadata !"", metadata !6, i32 28, metadata !22, i32 0, i32 1, i32* @z} ; [ DW_TAG_variable ]
!26 = metadata !{i32 1}
!27 = metadata !{i32 2}
!28 = metadata !{i32 3}
!29 = metadata !{i32 4}
!30 = metadata !{i32 721153, metadata !5, metadata !"arg", metadata !6, i32 16777246, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 30, i32 16, metadata !5, null}
!32 = metadata !{i32 5}
!33 = metadata !{i32 721152, metadata !34, metadata !"EAX", metadata !6, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!34 = metadata !{i32 720907, metadata !5, i32 31, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 32, i32 12, metadata !34, null}
!36 = metadata !{i32 6}
!37 = metadata !{i32 721152, metadata !34, metadata !"EBX", metadata !6, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!38 = metadata !{i32 32, i32 17, metadata !34, null}
!39 = metadata !{i32 7}
!40 = metadata !{i32 33, i32 3, metadata !34, null}
!41 = metadata !{i32 8}
!42 = metadata !{i32 34, i32 3, metadata !34, null}
!43 = metadata !{i32 9}
!44 = metadata !{i32 35, i32 3, metadata !34, null}
!45 = metadata !{i32 10}
!46 = metadata !{i32 11}
!47 = metadata !{i32 12}
!48 = metadata !{i32 13}
!49 = metadata !{i32 14}
!50 = metadata !{i32 721153, metadata !12, metadata !"arg", metadata !6, i32 16777254, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 38, i32 16, metadata !12, null}
!52 = metadata !{i32 15}
!53 = metadata !{i32 721152, metadata !54, metadata !"EAX", metadata !6, i32 40, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 720907, metadata !12, i32 39, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 40, i32 12, metadata !54, null}
!56 = metadata !{i32 16}
!57 = metadata !{i32 721152, metadata !54, metadata !"EBX", metadata !6, i32 40, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 40, i32 17, metadata !54, null}
!59 = metadata !{i32 17}
!60 = metadata !{i32 41, i32 3, metadata !54, null}
!61 = metadata !{i32 18}
!62 = metadata !{i32 42, i32 3, metadata !54, null}
!63 = metadata !{i32 19}
!64 = metadata !{i32 20}
!65 = metadata !{i32 43, i32 3, metadata !54, null}
!66 = metadata !{i32 21}
!67 = metadata !{i32 22}
!68 = metadata !{i32 44, i32 3, metadata !54, null}
!69 = metadata !{i32 23}
!70 = metadata !{i32 24}
!71 = metadata !{i32 25}
!72 = metadata !{i32 26}
!73 = metadata !{i32 27}
!74 = metadata !{i32 28}
!75 = metadata !{i32 29}
!76 = metadata !{i32 30}
!77 = metadata !{i32 31}
!78 = metadata !{i32 721153, metadata !13, metadata !"arg", metadata !6, i32 16777263, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 47, i32 16, metadata !13, null}
!80 = metadata !{i32 32}
!81 = metadata !{i32 721152, metadata !82, metadata !"EAX", metadata !6, i32 49, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 720907, metadata !13, i32 48, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 49, i32 12, metadata !82, null}
!84 = metadata !{i32 33}
!85 = metadata !{i32 721152, metadata !82, metadata !"EBX", metadata !6, i32 49, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 49, i32 17, metadata !82, null}
!87 = metadata !{i32 34}
!88 = metadata !{i32 50, i32 3, metadata !82, null}
!89 = metadata !{i32 35}
!90 = metadata !{i32 51, i32 3, metadata !82, null}
!91 = metadata !{i32 36}
!92 = metadata !{i32 52, i32 3, metadata !82, null}
!93 = metadata !{i32 37}
!94 = metadata !{i32 38}
!95 = metadata !{i32 39}
!96 = metadata !{i32 40}
!97 = metadata !{i32 41}
!98 = metadata !{i32 721153, metadata !14, metadata !"arg", metadata !6, i32 16777271, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 55, i32 16, metadata !14, null}
!100 = metadata !{i32 42}
!101 = metadata !{i32 721152, metadata !102, metadata !"EAX", metadata !6, i32 57, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 720907, metadata !14, i32 56, i32 1, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 57, i32 12, metadata !102, null}
!104 = metadata !{i32 43}
!105 = metadata !{i32 721152, metadata !102, metadata !"EBX", metadata !6, i32 57, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 57, i32 17, metadata !102, null}
!107 = metadata !{i32 44}
!108 = metadata !{i32 58, i32 3, metadata !102, null}
!109 = metadata !{i32 45}
!110 = metadata !{i32 59, i32 3, metadata !102, null}
!111 = metadata !{i32 46}
!112 = metadata !{i32 47}
!113 = metadata !{i32 60, i32 3, metadata !102, null}
!114 = metadata !{i32 48}
!115 = metadata !{i32 49}
!116 = metadata !{i32 61, i32 3, metadata !102, null}
!117 = metadata !{i32 50}
!118 = metadata !{i32 51}
!119 = metadata !{i32 52}
!120 = metadata !{i32 53}
!121 = metadata !{i32 54}
!122 = metadata !{i32 55}
!123 = metadata !{i32 56}
!124 = metadata !{i32 57}
!125 = metadata !{i32 58}
!126 = metadata !{i32 59}
!127 = metadata !{i32 60}
!128 = metadata !{i32 61}
!129 = metadata !{i32 62}
!130 = metadata !{i32 63}
!131 = metadata !{i32 64}
!132 = metadata !{i32 721152, metadata !133, metadata !"t0", metadata !6, i32 66, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 720907, metadata !15, i32 65, i32 1, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 720918, null, metadata !"pthread_t", metadata !6, i32 60, i64 0, i64 0, i64 0, i32 0, metadata !135} ; [ DW_TAG_typedef ]
!135 = metadata !{i32 720932, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!136 = metadata !{i32 66, i32 13, metadata !133, null}
!137 = metadata !{i32 65}
!138 = metadata !{i32 721152, metadata !133, metadata !"t1", metadata !6, i32 66, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!139 = metadata !{i32 66, i32 17, metadata !133, null}
!140 = metadata !{i32 66}
!141 = metadata !{i32 721152, metadata !133, metadata !"t2", metadata !6, i32 66, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 66, i32 21, metadata !133, null}
!143 = metadata !{i32 67}
!144 = metadata !{i32 721152, metadata !133, metadata !"t3", metadata !6, i32 66, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 66, i32 25, metadata !133, null}
!146 = metadata !{i32 68}
!147 = metadata !{i32 721152, metadata !133, metadata !"cond0", metadata !6, i32 67, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 67, i32 12, metadata !133, null}
!149 = metadata !{i32 69}
!150 = metadata !{i32 721152, metadata !133, metadata !"cond1", metadata !6, i32 67, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 67, i32 19, metadata !133, null}
!152 = metadata !{i32 70}
!153 = metadata !{i32 721152, metadata !133, metadata !"cond2", metadata !6, i32 67, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 67, i32 26, metadata !133, null}
!155 = metadata !{i32 71}
!156 = metadata !{i32 721152, metadata !133, metadata !"cond3", metadata !6, i32 67, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!157 = metadata !{i32 67, i32 33, metadata !133, null}
!158 = metadata !{i32 72}
!159 = metadata !{i32 69, i32 3, metadata !133, null}
!160 = metadata !{i32 73}
!161 = metadata !{i32 70, i32 3, metadata !133, null}
!162 = metadata !{i32 74}
!163 = metadata !{i32 71, i32 3, metadata !133, null}
!164 = metadata !{i32 75}
!165 = metadata !{i32 72, i32 3, metadata !133, null}
!166 = metadata !{i32 76}
!167 = metadata !{i32 74, i32 3, metadata !133, null}
!168 = metadata !{i32 77}
!169 = metadata !{i32 78}
!170 = metadata !{i32 79}
!171 = metadata !{i32 75, i32 3, metadata !133, null}
!172 = metadata !{i32 80}
!173 = metadata !{i32 81}
!174 = metadata !{i32 82}
!175 = metadata !{i32 76, i32 3, metadata !133, null}
!176 = metadata !{i32 83}
!177 = metadata !{i32 84}
!178 = metadata !{i32 85}
!179 = metadata !{i32 77, i32 3, metadata !133, null}
!180 = metadata !{i32 86}
!181 = metadata !{i32 87}
!182 = metadata !{i32 88}
!183 = metadata !{i32 80, i32 3, metadata !133, null}
!184 = metadata !{i32 89}
!185 = metadata !{i32 90}
!186 = metadata !{i32 91}
!187 = metadata !{i32 92}
!188 = metadata !{i32 93}
!189 = metadata !{i32 94}
!190 = metadata !{i32 95}
!191 = metadata !{i32 96}
!192 = metadata !{i32 97}
!193 = metadata !{i32 98}
!194 = metadata !{i32 99}
!195 = metadata !{i32 100}
!196 = metadata !{i32 81, i32 5, metadata !197, null}
!197 = metadata !{i32 720907, metadata !133, i32 80, i32 39, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 101}
!199 = metadata !{i32 82, i32 5, metadata !197, null}
!200 = metadata !{i32 102}
!201 = metadata !{i32 83, i32 3, metadata !197, null}
!202 = metadata !{i32 103}
!203 = metadata !{i32 85, i32 3, metadata !133, null}
!204 = metadata !{i32 104}
