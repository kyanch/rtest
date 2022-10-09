; ModuleID = 'main.e23cfee7-cgu.0'
source_filename = "main.e23cfee7-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"std::sys::unix::locks::pthread_remutex::ReentrantMutex" = type { %"core::cell::UnsafeCell<libc::unix::linux_like::linux::pthread_mutex_t>" }
%"core::cell::UnsafeCell<libc::unix::linux_like::linux::pthread_mutex_t>" = type { %"libc::unix::linux_like::linux::pthread_mutex_t" }
%"libc::unix::linux_like::linux::pthread_mutex_t" = type { [40 x i8] }
%"core::result::Result<usize, std::io::error::Error>" = type { i64, [1 x i64] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h5a3d743384069a4eE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h7890eb2af1b7c1d6E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf9a71517489eb1c5E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf9a71517489eb1c5E" to i8*) }>, align 8
@alloc36 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf2aa2f930589de21E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i8**, %"core::fmt::Formatter"*)* @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hfdebbcc4702e4721E" to i8*) }>, align 8
@alloc1 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"Hello world" }>, align 1
@alloc40 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"main.rs" }>, align 1
@alloc41 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [7 x i8] }>, <{ [7 x i8] }>* @alloc40, i32 0, i32 0, i32 0), [16 x i8] c"\07\00\00\00\00\00\00\00\05\00\00\00\22\00\00\00" }>, align 8

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h883af4f36f17084dE(void ()* nocapture noundef nonnull readonly %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  tail call void %f()
  tail call void asm sideeffect "", "r,~{memory}"({}* undef) #11, !srcloc !3
  ret void
}

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17hec0684e66cb58769E(void ()* noundef nonnull %main, i64 %argc, i8** %argv) unnamed_addr #1 {
start:
  %_8 = alloca i64*, align 8
  %0 = bitcast i64** %_8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0)
  %1 = bitcast i64** %_8 to void ()**
  store void ()* %main, void ()** %1, align 8
  %_5.0 = bitcast i64** %_8 to {}*
; call std::rt::lang_start_internal
  %2 = call i64 @_ZN3std2rt19lang_start_internal17h9c06694362b5b80cE({}* noundef nonnull align 1 %_5.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.0 to [3 x i64]*), i64 %argc, i8** %argv)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0)
  ret i64 %2
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf9a71517489eb1c5E"(i64** noalias nocapture noundef readonly align 8 dereferenceable(8) %_1) unnamed_addr #2 {
start:
  %0 = bitcast i64** %_1 to void ()**
  %_4 = load void ()*, void ()** %0, align 8, !nonnull !4, !noundef !4
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h883af4f36f17084dE(void ()* noundef nonnull %_4)
  ret i32 0
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h7890eb2af1b7c1d6E"(i64** nocapture readonly %_1) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = bitcast i64** %_1 to void ()**
  %1 = load void ()*, void ()** %0, align 8, !nonnull !4
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h883af4f36f17084dE(void ()* noundef nonnull %1), !noalias !5
  ret i32 0
}

; core::ptr::drop_in_place<std::io::error::Error>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf2aa2f930589de21E"(i8** nocapture readonly %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %_3.i.i = load i8*, i8** %_1, align 8, !alias.scope !8, !nonnull !4, !noundef !4
  %0 = ptrtoint i8* %_3.i.i to i64
  %_6.i.i.i = and i64 %0, 3
  switch i64 %_6.i.i.i, label %bb2.unreachabledefault.i.i.i [
    i64 2, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hff8732f489775e39E.exit"
    i64 3, label %bb5.i.i.i
    i64 0, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hff8732f489775e39E.exit"
    i64 1, label %bb2.i.i.i
  ]

bb2.unreachabledefault.i.i.i:                     ; preds = %start
  unreachable

bb5.i.i.i:                                        ; preds = %start
  %_14.i.i.i = lshr i64 %0, 32
  %kind_bits.i.i.i = trunc i64 %_14.i.i.i to i32
  %switch.i.i = icmp ult i32 %kind_bits.i.i.i, 41
  tail call void @llvm.assume(i1 %switch.i.i) #11
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hff8732f489775e39E.exit"

bb2.i.i.i:                                        ; preds = %start
  %1 = getelementptr i8, i8* %_3.i.i, i64 -1
  %2 = icmp ne i8* %1, null
  tail call void @llvm.assume(i1 %2) #11
  %3 = bitcast i8* %1 to {}**
  %4 = load {}*, {}** %3, align 8, !noalias !8, !nonnull !4, !align !11, !noundef !4
  %5 = getelementptr i8, i8* %_3.i.i, i64 7
  %6 = bitcast i8* %5 to void ({}*)***
  %7 = load void ({}*)**, void ({}*)*** %6, align 8, !noalias !8, !nonnull !4, !align !12
  %8 = load void ({}*)*, void ({}*)** %7, align 8, !invariant.load !4, !noalias !8, !nonnull !4
  invoke void %8({}* nonnull %4)
          to label %bb3.i.i.i.i.i.i unwind label %cleanup.i.i.i.i.i.i, !noalias !8

cleanup.i.i.i.i.i.i:                              ; preds = %bb2.i.i.i
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = bitcast i8* %1 to i8**
  %11 = load i8*, i8** %10, align 8, !noalias !8, !nonnull !4, !noundef !4
  %12 = bitcast i8* %5 to i64**
  %13 = load i64*, i64** %12, align 8, !noalias !8, !nonnull !4, !align !12, !noundef !4
; call alloc::alloc::box_free
  tail call fastcc void @_ZN5alloc5alloc8box_free17hdcd33516919e2efbE(i8* noundef nonnull %11, i64* noalias noundef nonnull readonly align 8 dereferenceable(24) %13) #12, !noalias !8
  %14 = bitcast i8* %1 to i64*
; call alloc::alloc::box_free
  tail call fastcc void @_ZN5alloc5alloc8box_free17h62387b299ef22a72E(i64* noundef nonnull %14) #12, !noalias !8
  resume { i8*, i32 } %9

bb3.i.i.i.i.i.i:                                  ; preds = %bb2.i.i.i
  %15 = bitcast i8* %1 to i8**
  %16 = load i8*, i8** %15, align 8, !noalias !8, !nonnull !4, !noundef !4
  %17 = bitcast i8* %5 to i64**
  %18 = load i64*, i64** %17, align 8, !noalias !8, !nonnull !4, !align !12, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8, !invariant.load !4, !alias.scope !13, !noalias !8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h94d263824f00f8c0E.exit.i.i.i", label %bb2.i.i.i.i.i.i.i.i

bb2.i.i.i.i.i.i.i.i:                              ; preds = %bb3.i.i.i.i.i.i
  %22 = getelementptr inbounds i64, i64* %18, i64 2
  %23 = load i64, i64* %22, align 8, !range !16, !invariant.load !4, !alias.scope !13, !noalias !8
  tail call void @__rust_dealloc(i8* nonnull %16, i64 %20, i64 %23) #11, !noalias !17
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h94d263824f00f8c0E.exit.i.i.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h94d263824f00f8c0E.exit.i.i.i": ; preds = %bb2.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i
  tail call void @__rust_dealloc(i8* nonnull %1, i64 24, i64 8) #11, !noalias !8
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hff8732f489775e39E.exit"

"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hff8732f489775e39E.exit": ; preds = %start, %start, %bb5.i.i.i, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h94d263824f00f8c0E.exit.i.i.i"
  ret void
}

; core::ptr::drop_in_place<std::io::stdio::StdoutLock>
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StdoutLock$GT$17h054999b8d0800115E"(i64** nocapture readonly %_1) unnamed_addr #1 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %0 = bitcast i64** %_1 to %"std::sys::unix::locks::pthread_remutex::ReentrantMutex"**
  %1 = load %"std::sys::unix::locks::pthread_remutex::ReentrantMutex"*, %"std::sys::unix::locks::pthread_remutex::ReentrantMutex"** %0, align 8, !alias.scope !21, !nonnull !4, !align !12
; call std::sys::unix::locks::pthread_remutex::ReentrantMutex::unlock
  tail call void @_ZN3std3sys4unix5locks15pthread_remutex14ReentrantMutex6unlock17he1b21062d7e106b3E(%"std::sys::unix::locks::pthread_remutex::ReentrantMutex"* noundef nonnull align 8 dereferenceable(40) %1), !noalias !18
  ret void
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind readnone uwtable willreturn
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h5a3d743384069a4eE"(i64** nocapture readnone %_1) unnamed_addr #3 {
start:
  ret void
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc5alloc8box_free17h62387b299ef22a72E(i64* noundef nonnull %0) unnamed_addr #4 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h4aa9d6d78cdd425dE.exit":
  %_2.i = bitcast i64* %0 to i8*
  tail call void @__rust_dealloc(i8* nonnull %_2.i, i64 24, i64 8) #11
  ret void
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc5alloc8box_free17hdcd33516919e2efbE(i8* noundef nonnull %0, i64* noalias noundef readonly align 8 dereferenceable(24) %1) unnamed_addr #4 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = getelementptr inbounds i64, i64* %1, i64 1
  %3 = load i64, i64* %2, align 8, !invariant.load !4
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h4aa9d6d78cdd425dE.exit", label %bb2.i

bb2.i:                                            ; preds = %start
  %5 = getelementptr inbounds i64, i64* %1, i64 2
  %6 = load i64, i64* %5, align 8, !range !16, !invariant.load !4
  tail call void @__rust_dealloc(i8* nonnull %0, i64 %3, i64 %6) #11
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h4aa9d6d78cdd425dE.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h4aa9d6d78cdd425dE.exit": ; preds = %start, %bb2.i
  ret void
}

; main::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4main4main17hb5848297e31de230E() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %e.i = alloca i8*, align 8
  %_5 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %_3 = alloca i64*, align 8
  %stdout = alloca i64*, align 8
  %0 = bitcast i64** %stdout to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0)
  %1 = bitcast i64** %_3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1)
; call std::io::stdio::stdout
  %2 = tail call noundef align 8 dereferenceable(80) i64* @_ZN3std2io5stdio6stdout17h8bc469255309ca83E()
  store i64* %2, i64** %_3, align 8
; call std::io::stdio::Stdout::lock
  %3 = call noundef align 8 dereferenceable(80) i64* @_ZN3std2io5stdio6Stdout4lock17h2d89f56958f4d7f5E(i64** noalias noundef nonnull readonly align 8 dereferenceable(8) %_3)
  store i64* %3, i64** %stdout, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1)
  %4 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4)
; invoke <std::io::stdio::StdoutLock as std::io::Write>::write
  invoke void @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$5write17hf76c5d37a9e22c68E"(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture noundef nonnull sret(%"core::result::Result<usize, std::io::error::Error>") dereferenceable(16) %_5, i64** noalias noundef nonnull align 8 dereferenceable(8) %stdout, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [11 x i8] }>* @alloc1 to [0 x i8]*), i64 11)
          to label %bb3 unwind label %cleanup

cleanup:                                          ; preds = %start
  %5 = landingpad { i8*, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %cleanup.i, %cleanup
  %eh.lpad-body = phi { i8*, i32 } [ %5, %cleanup ], [ %11, %cleanup.i ]
; invoke core::ptr::drop_in_place<std::io::stdio::StdoutLock>
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StdoutLock$GT$17h054999b8d0800115E"(i64** nonnull %stdout) #12
          to label %bb7 unwind label %abort

bb3:                                              ; preds = %start
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %6 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>", %"core::result::Result<usize, std::io::error::Error>"* %_5, i64 0, i32 0
  %_2.i = load i64, i64* %6, align 8, !range !31, !alias.scope !28, !noundef !4
  %trunc.not.i = icmp eq i64 %_2.i, 0
  br i1 %trunc.not.i, label %bb4, label %bb1.i

bb1.i:                                            ; preds = %bb3
  %7 = bitcast i8** %e.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7), !noalias !28
  %8 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>", %"core::result::Result<usize, std::io::error::Error>"* %_5, i64 0, i32 1
  %9 = bitcast [1 x i64]* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !alias.scope !28, !nonnull !4, !noundef !4
  store i8* %10, i8** %e.i, align 8, !noalias !28
  %_6.0.i = bitcast i8** %e.i to {}*
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hddd78f4658ac7d0fE([0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [43 x i8] }>* @alloc36 to [0 x i8]*), i64 43, {}* noundef nonnull align 1 %_6.0.i, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc41 to %"core::panic::location::Location"*)) #13
          to label %unreachable.i unwind label %cleanup.i, !noalias !28

cleanup.i:                                        ; preds = %bb1.i
  %11 = landingpad { i8*, i32 }
          cleanup
; invoke core::ptr::drop_in_place<std::io::error::Error>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf2aa2f930589de21E"(i8** nonnull %e.i) #12
          to label %cleanup.body unwind label %abort.i, !noalias !28

unreachable.i:                                    ; preds = %bb1.i
  unreachable

abort.i:                                          ; preds = %cleanup.i
  %12 = landingpad { i8*, i32 }
          cleanup
; call core::panicking::panic_no_unwind
  call void @_ZN4core9panicking15panic_no_unwind17hf64b99ebc8d4ce4fE() #14, !noalias !28
  unreachable

bb4:                                              ; preds = %bb3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %13 = bitcast i64** %stdout to %"std::sys::unix::locks::pthread_remutex::ReentrantMutex"**
  %14 = load %"std::sys::unix::locks::pthread_remutex::ReentrantMutex"*, %"std::sys::unix::locks::pthread_remutex::ReentrantMutex"** %13, align 8, !alias.scope !35, !nonnull !4, !align !12
; call std::sys::unix::locks::pthread_remutex::ReentrantMutex::unlock
  call void @_ZN3std3sys4unix5locks15pthread_remutex14ReentrantMutex6unlock17he1b21062d7e106b3E(%"std::sys::unix::locks::pthread_remutex::ReentrantMutex"* noundef nonnull align 8 dereferenceable(40) %14), !noalias !32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0)
  ret void

abort:                                            ; preds = %cleanup.body
  %15 = landingpad { i8*, i32 }
          cleanup
; call core::panicking::panic_no_unwind
  call void @_ZN4core9panicking15panic_no_unwind17hf64b99ebc8d4ce4fE() #14
  unreachable

bb7:                                              ; preds = %cleanup.body
  resume { i8*, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32, i32 noundef, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h9c06694362b5b80cE({}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24), i64, i8**) unnamed_addr #1

; core::panicking::panic_no_unwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17hf64b99ebc8d4ce4fE() unnamed_addr #6

; <std::io::error::Error as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hfdebbcc4702e4721E"(i8** noalias noundef readonly align 8 dereferenceable(8), %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17hddd78f4658ac7d0fE([0 x i8]* noalias noundef nonnull readonly align 1, i64, {}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24), %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #8

; std::sys::unix::locks::pthread_remutex::ReentrantMutex::unlock
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys4unix5locks15pthread_remutex14ReentrantMutex6unlock17he1b21062d7e106b3E(%"std::sys::unix::locks::pthread_remutex::ReentrantMutex"* noundef align 8 dereferenceable(40)) unnamed_addr #1

; std::io::stdio::stdout
; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(80) i64* @_ZN3std2io5stdio6stdout17h8bc469255309ca83E() unnamed_addr #1

; std::io::stdio::Stdout::lock
; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(80) i64* @_ZN3std2io5stdio6Stdout4lock17h2d89f56958f4d7f5E(i64** noalias noundef readonly align 8 dereferenceable(8)) unnamed_addr #1

; <std::io::stdio::StdoutLock as std::io::Write>::write
; Function Attrs: nonlazybind uwtable
declare void @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$5write17hf76c5d37a9e22c68E"(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture noundef sret(%"core::result::Result<usize, std::io::error::Error>") dereferenceable(16), i64** noalias noundef align 8 dereferenceable(8), [0 x i8]* noalias noundef nonnull readonly align 1, i64) unnamed_addr #1

; Function Attrs: nonlazybind
define i32 @main(i32 %0, i8** %1) unnamed_addr #9 {
top:
  %_8.i = alloca i64*, align 8
  %2 = sext i32 %0 to i64
  %3 = bitcast i64** %_8.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3)
  %4 = bitcast i64** %_8.i to void ()**
  store void ()* @_ZN4main4main17hb5848297e31de230E, void ()** %4, align 8
  %_5.0.i = bitcast i64** %_8.i to {}*
; call std::rt::lang_start_internal
  %5 = call i64 @_ZN3std2rt19lang_start_internal17h9c06694362b5b80cE({}* noundef nonnull align 1 %_5.0.i, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.0 to [3 x i64]*), i64 %2, i8** %1)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3)
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind readnone uwtable willreturn "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #9 = { nonlazybind "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #10 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { noinline }
attributes #13 = { noreturn }
attributes #14 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 3283416}
!4 = !{}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf9a71517489eb1c5E: %_1"}
!7 = distinct !{!7, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf9a71517489eb1c5E"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha542f62c669b0ecaE: %self"}
!10 = distinct !{!10, !"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha542f62c669b0ecaE"}
!11 = !{i64 1}
!12 = !{i64 8}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN5alloc5alloc8box_free17hdcd33516919e2efbE: argument 0"}
!15 = distinct !{!15, !"_ZN5alloc5alloc8box_free17hdcd33516919e2efbE"}
!16 = !{i64 1, i64 0}
!17 = !{!14, !9}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce5f9fc089836a42E: %self"}
!20 = distinct !{!20, !"_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce5f9fc089836a42E"}
!21 = !{!22, !24, !26, !19}
!22 = distinct !{!22, !23, !"_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2adecc875bc308faE: %self"}
!23 = distinct !{!23, !"_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2adecc875bc308faE"}
!24 = distinct !{!24, !25, !"_ZN4core3pin12Pin$LT$P$GT$6as_ref17hd97bc2b74f9d58abE: %self"}
!25 = distinct !{!25, !"_ZN4core3pin12Pin$LT$P$GT$6as_ref17hd97bc2b74f9d58abE"}
!26 = distinct !{!26, !27, !"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he9338268d7720bdbE: %self"}
!27 = distinct !{!27, !"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he9338268d7720bdbE"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7309179546a52650E: %self"}
!30 = distinct !{!30, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7309179546a52650E"}
!31 = !{i64 0, i64 2}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce5f9fc089836a42E: %self"}
!34 = distinct !{!34, !"_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce5f9fc089836a42E"}
!35 = !{!36, !38, !40, !33}
!36 = distinct !{!36, !37, !"_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2adecc875bc308faE: %self"}
!37 = distinct !{!37, !"_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2adecc875bc308faE"}
!38 = distinct !{!38, !39, !"_ZN4core3pin12Pin$LT$P$GT$6as_ref17hd97bc2b74f9d58abE: %self"}
!39 = distinct !{!39, !"_ZN4core3pin12Pin$LT$P$GT$6as_ref17hd97bc2b74f9d58abE"}
!40 = distinct !{!40, !41, !"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he9338268d7720bdbE: %self"}
!41 = distinct !{!41, !"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he9338268d7720bdbE"}
