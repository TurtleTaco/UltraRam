; ModuleID = '/home/linsun/XilinxLab/uram/proj_sum_io/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sum_io_str = internal unnamed_addr constant [7 x i8] c"sum_io\00"
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a18]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@p_str3 = private unnamed_addr constant [5 x i8] c"uram\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@p_str1 = private unnamed_addr constant [11 x i8] c"XPM_MEMORY\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define i64 @sum_io() nounwind uwtable readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(i64 0) nounwind, !map !462
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @sum_io_str) nounwind
  %empty = alloca [20000 x i4], align 1
  %empty_6 = alloca [20000 x i6], align 1
  call void (...)* @_ssdm_op_SpecMemCore([20000 x i4]* %empty, [1 x i8]* @p_str, [11 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [5 x i8]* @p_str2, [5 x i8]* @p_str3, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([20000 x i6]* %empty_6, [1 x i8]* @p_str, [11 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [5 x i8]* @p_str2, [5 x i8]* @p_str3, [1 x i8]* @p_str) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i15 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond2 = icmp eq i15 %i, -12768
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 20000, i64 20000, i64 20000) nounwind
  %i_1 = add i15 %i, 1
  br i1 %exitcond2, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %1
  br label %.preheader

; <label>:2                                       ; preds = %1
  %tmp = zext i15 %i to i64
  %p_addr = getelementptr [20000 x i4]* %empty, i64 0, i64 %tmp
  store i4 5, i4* %p_addr, align 1
  %p_addr_1 = getelementptr [20000 x i6]* %empty_6, i64 0, i64 %tmp
  store i6 23, i6* %p_addr_1, align 1
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %3
  %iterator = phi i15 [ %iterator_1, %3 ], [ 0, %.preheader.preheader ]
  %sum = phi i64 [ %p_Val2_s, %3 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i15 %iterator, -12768
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 20000, i64 20000, i64 20000) nounwind
  %iterator_1 = add i15 %iterator, 1
  br i1 %exitcond, label %4, label %3

; <label>:3                                       ; preds = %.preheader
  %tmp_2 = zext i15 %iterator to i64
  %p_addr_2 = getelementptr [20000 x i4]* %empty, i64 0, i64 %tmp_2
  %empty_9 = load i4* %p_addr_2, align 1
  %extLd_cast = sext i4 %empty_9 to i7
  %p_addr_3 = getelementptr [20000 x i6]* %empty_6, i64 0, i64 %tmp_2
  %empty_10 = load i6* %p_addr_3, align 1
  %extLd8_cast = sext i6 %empty_10 to i7
  %tmp_3 = add i7 %extLd_cast, %extLd8_cast
  %tmp_s = sext i7 %tmp_3 to i32
  %tmp_4 = sitofp i32 %tmp_s to double
  %x_assign = fmul double %tmp_4, 1.000000e-02
  %p_Val2_1 = bitcast double %x_assign to i64
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_1, i32 63)
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_1, i32 52, i32 62) nounwind
  %loc_V_1 = trunc i64 %p_Val2_1 to i52
  %tmp_8_i_i_i = call i54 @_ssdm_op_BitConcatenate.i54.i1.i52.i1(i1 true, i52 %loc_V_1, i1 false)
  %tmp_8_i_i_i_cast = zext i54 %tmp_8_i_i_i to i169
  %tmp_i_i_i_i_cast1 = zext i11 %loc_V to i12
  %sh_assign = add i12 -1023, %tmp_i_i_i_i_cast1
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign, i32 11)
  %tmp_i_i_i = sub i11 1023, %loc_V
  %tmp_i_i_i_cast = sext i11 %tmp_i_i_i to i12
  %sh_assign_1 = select i1 %isNeg, i12 %tmp_i_i_i_cast, i12 %sh_assign
  %sh_assign_1_cast = sext i12 %sh_assign_1 to i32
  %tmp_1_i_i_i = zext i32 %sh_assign_1_cast to i169
  %tmp_1_i_i_i_cast = zext i32 %sh_assign_1_cast to i54
  %tmp_2_i_i_i = lshr i54 %tmp_8_i_i_i, %tmp_1_i_i_i_cast
  %tmp_4_i_i_i = shl i169 %tmp_8_i_i_i_cast, %tmp_1_i_i_i
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i54.i32(i54 %tmp_2_i_i_i, i32 53)
  %tmp_5 = zext i1 %tmp_9 to i63
  %tmp_6 = call i63 @_ssdm_op_PartSelect.i63.i169.i32.i32(i169 %tmp_4_i_i_i, i32 53, i32 115)
  %p_Val2_3 = select i1 %isNeg, i63 %tmp_5, i63 %tmp_6
  %tmp_3_i_i_i = zext i63 %p_Val2_3 to i64
  %tmp_9_i_i_i = sub nsw i64 0, %tmp_3_i_i_i
  %p_Val2_s = select i1 %p_Result_s, i64 %tmp_9_i_i_i, i64 %tmp_3_i_i_i
  br label %.preheader

; <label>:4                                       ; preds = %.preheader
  ret i64 %sum
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i169 @llvm.part.select.i169(i169, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i63 @_ssdm_op_PartSelect.i63.i169.i32.i32(i169, i32, i32) nounwind readnone {
entry:
  %empty = call i169 @llvm.part.select.i169(i169 %0, i32 %1, i32 %2)
  %empty_11 = trunc i169 %empty to i63
  ret i63 %empty_11
}

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_12 = trunc i64 %empty to i11
  ret i11 %empty_12
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_13 = shl i64 1, %empty
  %empty_14 = and i64 %0, %empty_13
  %empty_15 = icmp ne i64 %empty_14, 0
  ret i1 %empty_15
}

define weak i1 @_ssdm_op_BitSelect.i1.i54.i32(i54, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i54
  %empty_16 = shl i54 1, %empty
  %empty_17 = and i54 %0, %empty_16
  %empty_18 = icmp ne i54 %empty_17, 0
  ret i1 %empty_18
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_19 = shl i12 1, %empty
  %empty_20 = and i12 %0, %empty_19
  %empty_21 = icmp ne i12 %empty_20, 0
  ret i1 %empty_21
}

define weak i54 @_ssdm_op_BitConcatenate.i54.i1.i52.i1(i1, i52, i1) nounwind readnone {
entry:
  %empty = zext i52 %1 to i53
  %empty_22 = zext i1 %2 to i53
  %empty_23 = shl i53 %empty, 1
  %empty_24 = or i53 %empty_23, %empty_22
  %empty_25 = zext i1 %0 to i54
  %empty_26 = zext i53 %empty_24 to i54
  %empty_27 = shl i54 %empty_25, 53
  %empty_28 = or i54 %empty_27, %empty_26
  ret i54 %empty_28
}

declare void @_GLOBAL__I_a18() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !7, !7, !7, !13, !13, !13, !13, !15, !15, !15, !15, !7, !7, !7, !7, !13, !13, !13, !13, !15, !15, !15, !15, !17, !23, !29, !29, !29, !30, !33, !33, !29, !36, !36, !38, !29, !29, !29, !40, !40, !29, !29, !42, !45, !45, !29, !47, !50, !50, !29, !52, !52, !54, !52, !52, !54, !56, !33, !33, !62, !29, !29, !29, !65, !33, !33, !29, !29, !29, !67, !33, !33, !69, !29, !29, !29, !71, !71, !73, !73, !75, !29, !29, !54, !54, !29, !77, !79, !82, !82, !86, !86, !89, !89, !93, !95, !95, !29, !29, !29, !29, !97, !99, !99, !29, !29, !86, !100, !100, !102, !102, !104, !106, !106, !107, !109, !109, !107, !111, !111, !113, !115, !115, !29, !29, !116, !118, !118, !86, !86, !119, !119, !113, !116, !118, !118, !29, !86, !121, !121, !123, !124, !124, !126, !29, !77, !123, !128, !128, !130, !130, !29, !29, !29, !29, !29, !29, !29, !29, !17, !132, !29, !29, !29, !30, !134, !134, !136, !29, !40, !40, !29, !29, !138, !47, !140, !140, !29, !142, !142, !144, !142, !142, !144, !56, !146, !29, !29, !29, !148, !33, !33, !75, !29, !29, !144, !144, !109, !109, !107, !17, !150, !29, !29, !29, !30, !33, !33, !29, !152, !152, !154, !29, !40, !40, !29, !29, !156, !47, !158, !158, !29, !160, !160, !162, !160, !160, !162, !56, !164, !29, !29, !29, !166, !33, !33, !75, !29, !29, !162, !162, !109, !109, !107, !17, !168, !29, !29, !29, !30, !33, !33, !29, !170, !170, !172, !29, !40, !40, !29, !29, !174, !47, !176, !176, !29, !178, !178, !180, !178, !178, !180, !56, !182, !29, !29, !29, !184, !33, !33, !75, !29, !29, !180, !180, !109, !109, !107, !186, !188, !29, !190, !190, !192, !190, !190, !192, !194, !29, !29, !29, !196, !33, !33, !29, !198, !200, !202, !202, !75, !29, !29, !192, !192, !29, !77, !79, !204, !204, !86, !86, !206, !206, !208, !210, !210, !29, !29, !29, !29, !211, !213, !213, !29, !29, !86, !214, !214, !102, !102, !104, !106, !106, !216, !218, !218, !216, !220, !220, !221, !223, !223, !29, !29, !224, !226, !226, !86, !86, !227, !227, !221, !224, !226, !226, !86, !229, !229, !123, !231, !231, !233, !29, !235, !235, !29, !29, !29, !29, !186, !236, !238, !238, !240, !238, !238, !240, !242, !29, !29, !29, !244, !33, !33, !75, !29, !29, !240, !240, !218, !218, !216, !186, !246, !248, !248, !250, !248, !248, !250, !252, !29, !29, !29, !254, !33, !33, !75, !29, !29, !250, !250, !218, !218, !216, !186, !256, !258, !258, !260, !258, !258, !260, !262, !29, !29, !29, !264, !33, !33, !75, !29, !29, !260, !260, !218, !218, !216, !266, !268, !29, !270, !272, !273, !273, !275, !273, !273, !275, !277, !29, !29, !29, !279, !33, !33, !29, !281, !282, !284, !284, !75, !29, !29, !275, !275, !29, !77, !79, !286, !286, !86, !86, !288, !288, !290, !292, !292, !29, !29, !29, !293, !295, !295, !29, !86, !296, !296, !102, !102, !104, !106, !106, !298, !300, !300, !298, !302, !302, !303, !305, !305, !29, !29, !306, !308, !308, !86, !86, !309, !309, !303, !306, !308, !308, !29, !86, !311, !311, !123, !313, !313, !315, !29, !317, !317, !29, !29, !29, !29, !29, !266, !319, !321, !321, !323, !321, !321, !323, !325, !29, !29, !327, !33, !33, !75, !29, !29, !323, !323, !300, !300, !298, !266, !329, !331, !331, !333, !331, !331, !333, !335, !29, !29, !29, !337, !33, !33, !75, !29, !29, !333, !333, !300, !300, !298, !266, !339, !341, !341, !343, !341, !341, !343, !345, !29, !29, !29, !347, !33, !33, !75, !29, !29, !343, !343, !300, !300, !298, !17, !349, !29, !29, !29, !29, !351, !351, !353, !353, !355, !357, !357, !29, !77, !123, !359, !359, !40, !40, !29, !361, !47, !363, !363, !29, !52, !52, !54, !52, !52, !54, !56, !17, !365, !29, !29, !29, !29, !367, !367, !106, !106, !369, !371, !371, !29, !77, !123, !373, !373, !40, !40, !29, !375, !47, !377, !377, !29, !142, !142, !144, !29, !142, !142, !144, !56, !17, !379, !29, !29, !29, !29, !381, !381, !383, !383, !385, !387, !387, !29, !77, !123, !389, !389, !40, !40, !29, !391, !47, !393, !393, !29, !160, !160, !162, !29, !160, !160, !162, !56, !17, !395, !29, !29, !29, !29, !397, !397, !399, !399, !401, !403, !403, !29, !77, !123, !405, !405, !40, !40, !29, !407, !47, !409, !409, !29, !178, !178, !180, !29, !178, !178, !180, !56, !186, !411, !190, !190, !192, !190, !190, !192, !186, !413, !238, !238, !240, !238, !238, !240, !186, !415, !248, !248, !250, !248, !248, !250, !186, !417, !258, !258, !260, !258, !258, !260, !266, !419, !273, !273, !275, !273, !273, !275, !266, !421, !321, !321, !323, !321, !321, !323, !266, !423, !331, !331, !333, !331, !331, !333, !266, !425, !341, !341, !343, !341, !341, !343, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !432, !432, !433, !29, !435, !29, !29, !29, !437, !437, !439, !439, !441, !29, !29, !29, !443, !29, !29, !29, !29, !445, !29, !102, !102, !104, !106, !106, !447, !432, !432, !433, !445, !102, !102, !104, !106, !106, !449, !432, !432, !433, !445, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !29, !427, !427, !427, !427, !427, !427, !451, !451, !451, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !451, !451, !451, !29, !451, !451, !451, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427, !29, !427, !427, !427}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!455}

!0 = metadata !{i64 ()* @sum_io, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space"}
!2 = metadata !{metadata !"kernel_arg_access_qual"}
!3 = metadata !{metadata !"kernel_arg_type"}
!4 = metadata !{metadata !"kernel_arg_type_qual"}
!5 = metadata !{metadata !"kernel_arg_name"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"half"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !12, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!15 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !12, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!17 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!19 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool"}
!21 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow"}
!23 = metadata !{null, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !6}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!25 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!27 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !""}
!29 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!30 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !32, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!33 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !35, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!36 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !35, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!38 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !35, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!40 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !41, metadata !6}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!42 = metadata !{null, metadata !18, metadata !19, metadata !43, metadata !21, metadata !44, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!45 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !46, metadata !6}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!47 = metadata !{null, metadata !8, metadata !9, metadata !48, metadata !11, metadata !49, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!50 = metadata !{null, metadata !8, metadata !9, metadata !51, metadata !11, metadata !35, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!52 = metadata !{null, metadata !8, metadata !9, metadata !53, metadata !11, metadata !35, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<169, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!54 = metadata !{null, metadata !8, metadata !9, metadata !55, metadata !11, metadata !35, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<169, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!56 = metadata !{null, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !6}
!57 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!58 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!60 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!62 = metadata !{null, metadata !18, metadata !19, metadata !63, metadata !21, metadata !64, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<169, false> &", metadata !"int"}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !49, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<169, false> &"}
!67 = metadata !{null, metadata !18, metadata !19, metadata !68, metadata !21, metadata !44, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!69 = metadata !{null, metadata !18, metadata !19, metadata !70, metadata !21, metadata !64, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!71 = metadata !{null, metadata !8, metadata !9, metadata !72, metadata !11, metadata !35, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!73 = metadata !{null, metadata !8, metadata !9, metadata !74, metadata !11, metadata !35, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!75 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !76, metadata !6}
!76 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!77 = metadata !{null, metadata !8, metadata !9, metadata !78, metadata !11, metadata !41, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!79 = metadata !{null, metadata !8, metadata !9, metadata !80, metadata !11, metadata !81, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!81 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!82 = metadata !{null, metadata !83, metadata !19, metadata !84, metadata !21, metadata !85, metadata !6}
!83 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!85 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!86 = metadata !{null, metadata !18, metadata !19, metadata !87, metadata !21, metadata !88, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!88 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!89 = metadata !{null, metadata !90, metadata !25, metadata !91, metadata !27, metadata !92, metadata !6}
!90 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!92 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!93 = metadata !{null, metadata !8, metadata !9, metadata !94, metadata !11, metadata !41, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!95 = metadata !{null, metadata !8, metadata !9, metadata !94, metadata !11, metadata !96, metadata !6}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!97 = metadata !{null, metadata !8, metadata !9, metadata !98, metadata !11, metadata !41, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!99 = metadata !{null, metadata !8, metadata !9, metadata !98, metadata !11, metadata !35, metadata !6}
!100 = metadata !{null, metadata !90, metadata !25, metadata !101, metadata !27, metadata !92, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!102 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !103, metadata !6}
!103 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!104 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !105, metadata !6}
!105 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!106 = metadata !{null, metadata !8, metadata !9, metadata !48, metadata !11, metadata !35, metadata !6}
!107 = metadata !{null, metadata !8, metadata !9, metadata !108, metadata !11, metadata !35, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!109 = metadata !{null, metadata !8, metadata !9, metadata !110, metadata !11, metadata !35, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!111 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !112, metadata !6}
!112 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!113 = metadata !{null, metadata !8, metadata !9, metadata !114, metadata !11, metadata !41, metadata !6}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!115 = metadata !{null, metadata !8, metadata !9, metadata !114, metadata !11, metadata !96, metadata !6}
!116 = metadata !{null, metadata !8, metadata !9, metadata !117, metadata !11, metadata !41, metadata !6}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!118 = metadata !{null, metadata !8, metadata !9, metadata !117, metadata !11, metadata !35, metadata !6}
!119 = metadata !{null, metadata !90, metadata !25, metadata !120, metadata !27, metadata !92, metadata !6}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!121 = metadata !{null, metadata !90, metadata !25, metadata !122, metadata !27, metadata !92, metadata !6}
!122 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!123 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !81, metadata !6}
!124 = metadata !{null, metadata !83, metadata !19, metadata !125, metadata !21, metadata !85, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!126 = metadata !{null, metadata !8, metadata !9, metadata !127, metadata !11, metadata !41, metadata !6}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!128 = metadata !{null, metadata !83, metadata !19, metadata !129, metadata !21, metadata !85, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!130 = metadata !{null, metadata !8, metadata !9, metadata !131, metadata !11, metadata !41, metadata !6}
!131 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!132 = metadata !{null, metadata !24, metadata !25, metadata !133, metadata !27, metadata !28, metadata !6}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!134 = metadata !{null, metadata !8, metadata !9, metadata !135, metadata !11, metadata !35, metadata !6}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!136 = metadata !{null, metadata !8, metadata !9, metadata !137, metadata !11, metadata !35, metadata !6}
!137 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!138 = metadata !{null, metadata !18, metadata !19, metadata !139, metadata !21, metadata !44, metadata !6}
!139 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!140 = metadata !{null, metadata !8, metadata !9, metadata !141, metadata !11, metadata !35, metadata !6}
!141 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!142 = metadata !{null, metadata !8, metadata !9, metadata !143, metadata !11, metadata !35, metadata !6}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<137, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!144 = metadata !{null, metadata !8, metadata !9, metadata !145, metadata !11, metadata !35, metadata !6}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<137, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!146 = metadata !{null, metadata !18, metadata !19, metadata !147, metadata !21, metadata !64, metadata !6}
!147 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<137, false> &", metadata !"int"}
!148 = metadata !{null, metadata !8, metadata !9, metadata !149, metadata !11, metadata !49, metadata !6}
!149 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<137, false> &"}
!150 = metadata !{null, metadata !24, metadata !25, metadata !151, metadata !27, metadata !28, metadata !6}
!151 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!152 = metadata !{null, metadata !8, metadata !9, metadata !153, metadata !11, metadata !35, metadata !6}
!153 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!154 = metadata !{null, metadata !8, metadata !9, metadata !155, metadata !11, metadata !35, metadata !6}
!155 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!156 = metadata !{null, metadata !18, metadata !19, metadata !157, metadata !21, metadata !44, metadata !6}
!157 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!158 = metadata !{null, metadata !8, metadata !9, metadata !159, metadata !11, metadata !35, metadata !6}
!159 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!160 = metadata !{null, metadata !8, metadata !9, metadata !161, metadata !11, metadata !35, metadata !6}
!161 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<121, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!162 = metadata !{null, metadata !8, metadata !9, metadata !163, metadata !11, metadata !35, metadata !6}
!163 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<121, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!164 = metadata !{null, metadata !18, metadata !19, metadata !165, metadata !21, metadata !64, metadata !6}
!165 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<121, false> &", metadata !"int"}
!166 = metadata !{null, metadata !8, metadata !9, metadata !167, metadata !11, metadata !49, metadata !6}
!167 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<121, false> &"}
!168 = metadata !{null, metadata !24, metadata !25, metadata !169, metadata !27, metadata !28, metadata !6}
!169 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!170 = metadata !{null, metadata !8, metadata !9, metadata !171, metadata !11, metadata !35, metadata !6}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!172 = metadata !{null, metadata !8, metadata !9, metadata !173, metadata !11, metadata !35, metadata !6}
!173 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!174 = metadata !{null, metadata !18, metadata !19, metadata !175, metadata !21, metadata !44, metadata !6}
!175 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!176 = metadata !{null, metadata !8, metadata !9, metadata !177, metadata !11, metadata !35, metadata !6}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!178 = metadata !{null, metadata !8, metadata !9, metadata !179, metadata !11, metadata !35, metadata !6}
!179 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<113, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!180 = metadata !{null, metadata !8, metadata !9, metadata !181, metadata !11, metadata !35, metadata !6}
!181 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<113, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!182 = metadata !{null, metadata !18, metadata !19, metadata !183, metadata !21, metadata !64, metadata !6}
!183 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<113, false> &", metadata !"int"}
!184 = metadata !{null, metadata !8, metadata !9, metadata !185, metadata !11, metadata !49, metadata !6}
!185 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<113, false> &"}
!186 = metadata !{null, metadata !18, metadata !19, metadata !187, metadata !21, metadata !22, metadata !6}
!187 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool"}
!188 = metadata !{null, metadata !24, metadata !25, metadata !189, metadata !27, metadata !28, metadata !6}
!189 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!190 = metadata !{null, metadata !8, metadata !9, metadata !191, metadata !11, metadata !35, metadata !6}
!191 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<111, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!192 = metadata !{null, metadata !8, metadata !9, metadata !193, metadata !11, metadata !35, metadata !6}
!193 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<111, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!194 = metadata !{null, metadata !18, metadata !19, metadata !195, metadata !21, metadata !64, metadata !6}
!195 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<111, false> &", metadata !"int"}
!196 = metadata !{null, metadata !8, metadata !9, metadata !197, metadata !11, metadata !49, metadata !6}
!197 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<111, false> &"}
!198 = metadata !{null, metadata !18, metadata !19, metadata !199, metadata !21, metadata !44, metadata !6}
!199 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!200 = metadata !{null, metadata !18, metadata !19, metadata !201, metadata !21, metadata !64, metadata !6}
!201 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!202 = metadata !{null, metadata !8, metadata !9, metadata !203, metadata !11, metadata !35, metadata !6}
!203 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!204 = metadata !{null, metadata !83, metadata !19, metadata !205, metadata !21, metadata !85, metadata !6}
!205 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!206 = metadata !{null, metadata !90, metadata !25, metadata !207, metadata !27, metadata !92, metadata !6}
!207 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!208 = metadata !{null, metadata !8, metadata !9, metadata !209, metadata !11, metadata !41, metadata !6}
!209 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!210 = metadata !{null, metadata !8, metadata !9, metadata !209, metadata !11, metadata !96, metadata !6}
!211 = metadata !{null, metadata !8, metadata !9, metadata !212, metadata !11, metadata !41, metadata !6}
!212 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!213 = metadata !{null, metadata !8, metadata !9, metadata !212, metadata !11, metadata !35, metadata !6}
!214 = metadata !{null, metadata !90, metadata !25, metadata !215, metadata !27, metadata !92, metadata !6}
!215 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!216 = metadata !{null, metadata !8, metadata !9, metadata !217, metadata !11, metadata !35, metadata !6}
!217 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!218 = metadata !{null, metadata !8, metadata !9, metadata !219, metadata !11, metadata !35, metadata !6}
!219 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!220 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !112, metadata !6}
!221 = metadata !{null, metadata !8, metadata !9, metadata !222, metadata !11, metadata !41, metadata !6}
!222 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!223 = metadata !{null, metadata !8, metadata !9, metadata !222, metadata !11, metadata !96, metadata !6}
!224 = metadata !{null, metadata !8, metadata !9, metadata !225, metadata !11, metadata !41, metadata !6}
!225 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!226 = metadata !{null, metadata !8, metadata !9, metadata !225, metadata !11, metadata !35, metadata !6}
!227 = metadata !{null, metadata !90, metadata !25, metadata !228, metadata !27, metadata !92, metadata !6}
!228 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!229 = metadata !{null, metadata !90, metadata !25, metadata !230, metadata !27, metadata !92, metadata !6}
!230 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!231 = metadata !{null, metadata !83, metadata !19, metadata !232, metadata !21, metadata !85, metadata !6}
!232 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!233 = metadata !{null, metadata !8, metadata !9, metadata !234, metadata !11, metadata !41, metadata !6}
!234 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!235 = metadata !{null, metadata !8, metadata !9, metadata !80, metadata !11, metadata !41, metadata !6}
!236 = metadata !{null, metadata !24, metadata !25, metadata !237, metadata !27, metadata !28, metadata !6}
!237 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!238 = metadata !{null, metadata !8, metadata !9, metadata !239, metadata !11, metadata !35, metadata !6}
!239 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<79, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!240 = metadata !{null, metadata !8, metadata !9, metadata !241, metadata !11, metadata !35, metadata !6}
!241 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!242 = metadata !{null, metadata !18, metadata !19, metadata !243, metadata !21, metadata !64, metadata !6}
!243 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &", metadata !"int"}
!244 = metadata !{null, metadata !8, metadata !9, metadata !245, metadata !11, metadata !49, metadata !6}
!245 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &"}
!246 = metadata !{null, metadata !24, metadata !25, metadata !247, metadata !27, metadata !28, metadata !6}
!247 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!248 = metadata !{null, metadata !8, metadata !9, metadata !249, metadata !11, metadata !35, metadata !6}
!249 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<63, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!250 = metadata !{null, metadata !8, metadata !9, metadata !251, metadata !11, metadata !35, metadata !6}
!251 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!252 = metadata !{null, metadata !18, metadata !19, metadata !253, metadata !21, metadata !64, metadata !6}
!253 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<63, false> &", metadata !"int"}
!254 = metadata !{null, metadata !8, metadata !9, metadata !255, metadata !11, metadata !49, metadata !6}
!255 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<63, false> &"}
!256 = metadata !{null, metadata !24, metadata !25, metadata !257, metadata !27, metadata !28, metadata !6}
!257 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!258 = metadata !{null, metadata !8, metadata !9, metadata !259, metadata !11, metadata !35, metadata !6}
!259 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!260 = metadata !{null, metadata !8, metadata !9, metadata !261, metadata !11, metadata !35, metadata !6}
!261 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!262 = metadata !{null, metadata !18, metadata !19, metadata !263, metadata !21, metadata !64, metadata !6}
!263 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!264 = metadata !{null, metadata !8, metadata !9, metadata !265, metadata !11, metadata !49, metadata !6}
!265 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!266 = metadata !{null, metadata !18, metadata !19, metadata !267, metadata !21, metadata !22, metadata !6}
!267 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool"}
!268 = metadata !{null, metadata !24, metadata !25, metadata !269, metadata !27, metadata !28, metadata !6}
!269 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!270 = metadata !{null, metadata !18, metadata !19, metadata !271, metadata !21, metadata !64, metadata !6}
!271 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"int"}
!272 = metadata !{null, metadata !8, metadata !9, metadata !72, metadata !11, metadata !49, metadata !6}
!273 = metadata !{null, metadata !8, metadata !9, metadata !274, metadata !11, metadata !35, metadata !6}
!274 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<85, 74, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!275 = metadata !{null, metadata !8, metadata !9, metadata !276, metadata !11, metadata !35, metadata !6}
!276 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<85, 74, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!277 = metadata !{null, metadata !18, metadata !19, metadata !278, metadata !21, metadata !64, metadata !6}
!278 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<85, false> &", metadata !"int"}
!279 = metadata !{null, metadata !8, metadata !9, metadata !280, metadata !11, metadata !49, metadata !6}
!280 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<85, false> &"}
!281 = metadata !{null, metadata !18, metadata !19, metadata !271, metadata !21, metadata !44, metadata !6}
!282 = metadata !{null, metadata !18, metadata !19, metadata !283, metadata !21, metadata !64, metadata !6}
!283 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"const ap_int_base<32, true> &"}
!284 = metadata !{null, metadata !8, metadata !9, metadata !285, metadata !11, metadata !35, metadata !6}
!285 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!286 = metadata !{null, metadata !83, metadata !19, metadata !287, metadata !21, metadata !85, metadata !6}
!287 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!288 = metadata !{null, metadata !90, metadata !25, metadata !289, metadata !27, metadata !92, metadata !6}
!289 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<10, false>*", metadata !"int", metadata !"int"}
!290 = metadata !{null, metadata !8, metadata !9, metadata !291, metadata !11, metadata !41, metadata !6}
!291 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<10, false> &"}
!292 = metadata !{null, metadata !8, metadata !9, metadata !291, metadata !11, metadata !96, metadata !6}
!293 = metadata !{null, metadata !8, metadata !9, metadata !294, metadata !11, metadata !41, metadata !6}
!294 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, false> &"}
!295 = metadata !{null, metadata !8, metadata !9, metadata !294, metadata !11, metadata !35, metadata !6}
!296 = metadata !{null, metadata !90, metadata !25, metadata !297, metadata !27, metadata !92, metadata !6}
!297 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!298 = metadata !{null, metadata !8, metadata !9, metadata !299, metadata !11, metadata !35, metadata !6}
!299 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!300 = metadata !{null, metadata !8, metadata !9, metadata !301, metadata !11, metadata !35, metadata !6}
!301 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<11, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!302 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !112, metadata !6}
!303 = metadata !{null, metadata !8, metadata !9, metadata !304, metadata !11, metadata !41, metadata !6}
!304 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<16, false> &"}
!305 = metadata !{null, metadata !8, metadata !9, metadata !304, metadata !11, metadata !96, metadata !6}
!306 = metadata !{null, metadata !8, metadata !9, metadata !307, metadata !11, metadata !41, metadata !6}
!307 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!308 = metadata !{null, metadata !8, metadata !9, metadata !307, metadata !11, metadata !35, metadata !6}
!309 = metadata !{null, metadata !90, metadata !25, metadata !310, metadata !27, metadata !92, metadata !6}
!310 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int", metadata !"int"}
!311 = metadata !{null, metadata !90, metadata !25, metadata !312, metadata !27, metadata !92, metadata !6}
!312 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<5, false>*", metadata !"int", metadata !"int"}
!313 = metadata !{null, metadata !83, metadata !19, metadata !314, metadata !21, metadata !85, metadata !6}
!314 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int"}
!315 = metadata !{null, metadata !8, metadata !9, metadata !316, metadata !11, metadata !41, metadata !6}
!316 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<16, false> &"}
!317 = metadata !{null, metadata !8, metadata !9, metadata !318, metadata !11, metadata !41, metadata !6}
!318 = metadata !{metadata !"kernel_arg_type", metadata !"ushort"}
!319 = metadata !{null, metadata !24, metadata !25, metadata !320, metadata !27, metadata !28, metadata !6}
!320 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!321 = metadata !{null, metadata !8, metadata !9, metadata !322, metadata !11, metadata !35, metadata !6}
!322 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 42, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!323 = metadata !{null, metadata !8, metadata !9, metadata !324, metadata !11, metadata !35, metadata !6}
!324 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 42, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!325 = metadata !{null, metadata !18, metadata !19, metadata !326, metadata !21, metadata !64, metadata !6}
!326 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"int"}
!327 = metadata !{null, metadata !8, metadata !9, metadata !328, metadata !11, metadata !49, metadata !6}
!328 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &"}
!329 = metadata !{null, metadata !24, metadata !25, metadata !330, metadata !27, metadata !28, metadata !6}
!330 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!331 = metadata !{null, metadata !8, metadata !9, metadata !332, metadata !11, metadata !35, metadata !6}
!332 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<37, 26, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!333 = metadata !{null, metadata !8, metadata !9, metadata !334, metadata !11, metadata !35, metadata !6}
!334 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<37, 26, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!335 = metadata !{null, metadata !18, metadata !19, metadata !336, metadata !21, metadata !64, metadata !6}
!336 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<37, false> &", metadata !"int"}
!337 = metadata !{null, metadata !8, metadata !9, metadata !338, metadata !11, metadata !49, metadata !6}
!338 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<37, false> &"}
!339 = metadata !{null, metadata !24, metadata !25, metadata !340, metadata !27, metadata !28, metadata !6}
!340 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!341 = metadata !{null, metadata !8, metadata !9, metadata !342, metadata !11, metadata !35, metadata !6}
!342 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<29, 18, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!343 = metadata !{null, metadata !8, metadata !9, metadata !344, metadata !11, metadata !35, metadata !6}
!344 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<29, 18, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!345 = metadata !{null, metadata !18, metadata !19, metadata !346, metadata !21, metadata !64, metadata !6}
!346 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &", metadata !"int"}
!347 = metadata !{null, metadata !8, metadata !9, metadata !348, metadata !11, metadata !49, metadata !6}
!348 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &"}
!349 = metadata !{null, metadata !24, metadata !25, metadata !350, metadata !27, metadata !28, metadata !6}
!350 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!351 = metadata !{null, metadata !8, metadata !9, metadata !352, metadata !11, metadata !35, metadata !6}
!352 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 63, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!353 = metadata !{null, metadata !8, metadata !9, metadata !354, metadata !11, metadata !35, metadata !6}
!354 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!355 = metadata !{null, metadata !8, metadata !9, metadata !356, metadata !11, metadata !35, metadata !6}
!356 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!357 = metadata !{null, metadata !8, metadata !9, metadata !358, metadata !11, metadata !35, metadata !6}
!358 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<63, 63, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!359 = metadata !{null, metadata !83, metadata !19, metadata !360, metadata !21, metadata !85, metadata !6}
!360 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!361 = metadata !{null, metadata !18, metadata !19, metadata !362, metadata !21, metadata !44, metadata !6}
!362 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!363 = metadata !{null, metadata !8, metadata !9, metadata !364, metadata !11, metadata !35, metadata !6}
!364 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!365 = metadata !{null, metadata !24, metadata !25, metadata !366, metadata !27, metadata !28, metadata !6}
!366 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!367 = metadata !{null, metadata !8, metadata !9, metadata !368, metadata !11, metadata !35, metadata !6}
!368 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!369 = metadata !{null, metadata !8, metadata !9, metadata !370, metadata !11, metadata !35, metadata !6}
!370 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!371 = metadata !{null, metadata !8, metadata !9, metadata !372, metadata !11, metadata !35, metadata !6}
!372 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!373 = metadata !{null, metadata !83, metadata !19, metadata !374, metadata !21, metadata !85, metadata !6}
!374 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!375 = metadata !{null, metadata !18, metadata !19, metadata !376, metadata !21, metadata !44, metadata !6}
!376 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!377 = metadata !{null, metadata !8, metadata !9, metadata !378, metadata !11, metadata !35, metadata !6}
!378 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!379 = metadata !{null, metadata !24, metadata !25, metadata !380, metadata !27, metadata !28, metadata !6}
!380 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!381 = metadata !{null, metadata !8, metadata !9, metadata !382, metadata !11, metadata !35, metadata !6}
!382 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<15, 15, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!383 = metadata !{null, metadata !8, metadata !9, metadata !384, metadata !11, metadata !35, metadata !6}
!384 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!385 = metadata !{null, metadata !8, metadata !9, metadata !386, metadata !11, metadata !35, metadata !6}
!386 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!387 = metadata !{null, metadata !8, metadata !9, metadata !388, metadata !11, metadata !35, metadata !6}
!388 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<15, 15, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!389 = metadata !{null, metadata !83, metadata !19, metadata !390, metadata !21, metadata !85, metadata !6}
!390 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!391 = metadata !{null, metadata !18, metadata !19, metadata !392, metadata !21, metadata !44, metadata !6}
!392 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!393 = metadata !{null, metadata !8, metadata !9, metadata !394, metadata !11, metadata !35, metadata !6}
!394 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!395 = metadata !{null, metadata !24, metadata !25, metadata !396, metadata !27, metadata !28, metadata !6}
!396 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!397 = metadata !{null, metadata !8, metadata !9, metadata !398, metadata !11, metadata !35, metadata !6}
!398 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<7, 7, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!399 = metadata !{null, metadata !8, metadata !9, metadata !400, metadata !11, metadata !35, metadata !6}
!400 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!401 = metadata !{null, metadata !8, metadata !9, metadata !402, metadata !11, metadata !35, metadata !6}
!402 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!403 = metadata !{null, metadata !8, metadata !9, metadata !404, metadata !11, metadata !35, metadata !6}
!404 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<7, 7, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!405 = metadata !{null, metadata !83, metadata !19, metadata !406, metadata !21, metadata !85, metadata !6}
!406 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!407 = metadata !{null, metadata !18, metadata !19, metadata !408, metadata !21, metadata !44, metadata !6}
!408 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!409 = metadata !{null, metadata !8, metadata !9, metadata !410, metadata !11, metadata !35, metadata !6}
!410 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!411 = metadata !{null, metadata !24, metadata !25, metadata !412, metadata !27, metadata !28, metadata !6}
!412 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!413 = metadata !{null, metadata !24, metadata !25, metadata !414, metadata !27, metadata !28, metadata !6}
!414 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!415 = metadata !{null, metadata !24, metadata !25, metadata !416, metadata !27, metadata !28, metadata !6}
!416 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!417 = metadata !{null, metadata !24, metadata !25, metadata !418, metadata !27, metadata !28, metadata !6}
!418 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!419 = metadata !{null, metadata !24, metadata !25, metadata !420, metadata !27, metadata !28, metadata !6}
!420 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!421 = metadata !{null, metadata !24, metadata !25, metadata !422, metadata !27, metadata !28, metadata !6}
!422 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!423 = metadata !{null, metadata !24, metadata !25, metadata !424, metadata !27, metadata !28, metadata !6}
!424 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!425 = metadata !{null, metadata !24, metadata !25, metadata !426, metadata !27, metadata !28, metadata !6}
!426 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!427 = metadata !{null, metadata !428, metadata !9, metadata !429, metadata !430, metadata !431, metadata !6}
!428 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!429 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!430 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!431 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!432 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !103, metadata !6}
!433 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !434, metadata !6}
!434 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!435 = metadata !{null, metadata !18, metadata !19, metadata !436, metadata !21, metadata !64, metadata !6}
!436 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!437 = metadata !{null, metadata !8, metadata !9, metadata !438, metadata !11, metadata !35, metadata !6}
!438 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!439 = metadata !{null, metadata !8, metadata !9, metadata !440, metadata !11, metadata !35, metadata !6}
!440 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!441 = metadata !{null, metadata !8, metadata !9, metadata !442, metadata !11, metadata !49, metadata !6}
!442 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!443 = metadata !{null, metadata !8, metadata !9, metadata !444, metadata !11, metadata !49, metadata !6}
!444 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!445 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !446, metadata !6}
!446 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!447 = metadata !{null, metadata !8, metadata !9, metadata !448, metadata !11, metadata !35, metadata !6}
!448 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<25, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!449 = metadata !{null, metadata !8, metadata !9, metadata !450, metadata !11, metadata !35, metadata !6}
!450 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<7, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!451 = metadata !{null, metadata !83, metadata !19, metadata !452, metadata !453, metadata !454, metadata !6}
!452 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!453 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!454 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!455 = metadata !{metadata !456, [2 x i32]* @llvm_global_ctors_0}
!456 = metadata !{metadata !457}
!457 = metadata !{i32 0, i32 31, metadata !458}
!458 = metadata !{metadata !459}
!459 = metadata !{metadata !"llvm.global_ctors.0", metadata !460, metadata !"", i32 0, i32 31}
!460 = metadata !{metadata !461}
!461 = metadata !{i32 0, i32 1, i32 1}
!462 = metadata !{metadata !463}
!463 = metadata !{i32 0, i32 63, metadata !464}
!464 = metadata !{metadata !465}
!465 = metadata !{metadata !"return", metadata !466, metadata !"int64_t", i32 0, i32 63}
!466 = metadata !{metadata !467}
!467 = metadata !{i32 0, i32 1, i32 0}
