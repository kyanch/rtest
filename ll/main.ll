; ModuleID = 'main.31168a39-cgu.0'
source_filename = "main.31168a39-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"alloc::vec::Vec<i32>" = type { { i32*, i64 }, i64 }
%"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>" = type { %"core::marker::PhantomPinned", %"core::sync::atomic::AtomicUsize", %"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>", %"std::sys::unix::locks::futex_mutex::Mutex", i32 }
%"core::marker::PhantomPinned" = type {}
%"core::sync::atomic::AtomicUsize" = type { i64 }
%"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>" = type { i64, %"core::cell::UnsafeCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>" }
%"core::cell::UnsafeCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>" = type { %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>" }
%"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>" = type { %"std::io::buffered::bufwriter::BufWriter<std::io::stdio::StdoutRaw>" }
%"std::io::buffered::bufwriter::BufWriter<std::io::stdio::StdoutRaw>" = type { %"std::io::stdio::StdoutRaw", %"alloc::vec::Vec<u8>", i8, [7 x i8] }
%"std::io::stdio::StdoutRaw" = type { %"std::sys::unix::stdio::Stdout" }
%"std::sys::unix::stdio::Stdout" = type { {} }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%"std::sys::unix::locks::futex_mutex::Mutex" = type { %"core::sync::atomic::AtomicU32" }
%"core::sync::atomic::AtomicU32" = type { i32 }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>" = type { i64, [2 x i64] }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::result::Result<usize, std::io::error::Error>" = type { i64, [1 x i64] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h8d2b267ac7c4349cE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h1008e89474860754E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8dc670e5f0e5ea33E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8dc670e5f0e5ea33E" to i8*) }>, align 8
@alloc139 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h1c235449e88d39ebE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i8**, %"core::fmt::Formatter"*)* @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c9d3e6f2f9e3a87E" to i8*) }>, align 8
@alloc161 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"main.rs" }>, align 1
@alloc160 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [7 x i8] }>, <{ [7 x i8] }>* @alloc161, i32 0, i32 0, i32 0), [16 x i8] c"\07\00\00\00\00\00\00\00\08\00\00\00\11\00\00\00" }>, align 8
@alloc1 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"Hello world" }>, align 1
@alloc162 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [7 x i8] }>, <{ [7 x i8] }>* @alloc161, i32 0, i32 0, i32 0), [16 x i8] c"\07\00\00\00\00\00\00\00\0A\00\00\00\22\00\00\00" }>, align 8

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h828262d00a4fb4c6E(void ()* nocapture noundef nonnull readonly %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  tail call void %f()
  tail call void asm sideeffect "", "r,~{memory}"({}* undef) #20, !srcloc !3
  ret void
}

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17h8f251a561586ee14E(void ()* noundef nonnull %main, i64 %argc, i8** %argv) unnamed_addr #1 {
start:
  %_8 = alloca i64*, align 8
  %0 = bitcast i64** %_8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0)
  %1 = bitcast i64** %_8 to void ()**
  store void ()* %main, void ()** %1, align 8
  %_5.0 = bitcast i64** %_8 to {}*
; call std::rt::lang_start_internal
  %2 = call i64 @_ZN3std2rt19lang_start_internal17h6612c8a7a6861b8bE({}* noundef nonnull align 1 %_5.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.0 to [3 x i64]*), i64 %argc, i8** %argv)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0)
  ret i64 %2
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8dc670e5f0e5ea33E"(i64** noalias nocapture noundef readonly align 8 dereferenceable(8) %_1) unnamed_addr #2 {
start:
  %0 = bitcast i64** %_1 to void ()**
  %_4 = load void ()*, void ()** %0, align 8, !nonnull !4, !noundef !4
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h828262d00a4fb4c6E(void ()* noundef nonnull %_4)
  ret i32 0
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h1008e89474860754E"(i64** nocapture readonly %_1) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = bitcast i64** %_1 to void ()**
  %1 = load void ()*, void ()** %0, align 8, !nonnull !4
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h828262d00a4fb4c6E(void ()* noundef nonnull %1), !noalias !5
  ret i32 0
}

; core::ptr::drop_in_place<std::io::error::Error>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h1c235449e88d39ebE"(i8** nocapture readonly %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %_3.i.i = load i8*, i8** %_1, align 8, !alias.scope !8, !nonnull !4, !noundef !4
  %0 = ptrtoint i8* %_3.i.i to i64
  %_6.i.i.i = and i64 %0, 3
  switch i64 %_6.i.i.i, label %bb2.unreachabledefault.i.i.i [
    i64 2, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h45ca3e6335126593E.exit"
    i64 3, label %bb5.i.i.i
    i64 0, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h45ca3e6335126593E.exit"
    i64 1, label %bb2.i.i.i
  ]

bb2.unreachabledefault.i.i.i:                     ; preds = %start
  unreachable

bb5.i.i.i:                                        ; preds = %start
  %_14.i.i.i = lshr i64 %0, 32
  %kind_bits.i.i.i = trunc i64 %_14.i.i.i to i32
  %switch.i.i = icmp ult i32 %kind_bits.i.i.i, 41
  tail call void @llvm.assume(i1 %switch.i.i) #20
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h45ca3e6335126593E.exit"

bb2.i.i.i:                                        ; preds = %start
  %1 = getelementptr i8, i8* %_3.i.i, i64 -1
  %2 = icmp ne i8* %1, null
  tail call void @llvm.assume(i1 %2) #20
  %3 = bitcast i8* %1 to {}**
  %4 = load {}*, {}** %3, align 8, !noalias !8
  %5 = getelementptr i8, i8* %_3.i.i, i64 7
  %6 = bitcast i8* %5 to void ({}*)***
  %7 = load void ({}*)**, void ({}*)*** %6, align 8, !noalias !8, !nonnull !4, !align !11
  %8 = load void ({}*)*, void ({}*)** %7, align 8, !invariant.load !4, !noalias !8, !nonnull !4
  invoke void %8({}* %4)
          to label %bb3.i.i.i.i.i.i unwind label %cleanup.i.i.i.i.i.i, !noalias !8

cleanup.i.i.i.i.i.i:                              ; preds = %bb2.i.i.i
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = bitcast i8* %1 to i8**
  %11 = load i8*, i8** %10, align 8, !noalias !8, !nonnull !4, !noundef !4
  %12 = bitcast i8* %5 to i64**
  %13 = load i64*, i64** %12, align 8, !noalias !8, !nonnull !4, !align !11, !noundef !4
; call alloc::alloc::box_free
  tail call fastcc void @_ZN5alloc5alloc8box_free17h1998711458a3bb9aE(i8* noundef nonnull %11, i64* noalias noundef nonnull readonly align 8 dereferenceable(24) %13) #21, !noalias !8
  %14 = bitcast i8* %1 to i64*
; call alloc::alloc::box_free
  tail call fastcc void @_ZN5alloc5alloc8box_free17h0c14b3edd9d7fce2E(i64* noundef nonnull %14) #21, !noalias !8
  resume { i8*, i32 } %9

bb3.i.i.i.i.i.i:                                  ; preds = %bb2.i.i.i
  %15 = bitcast i8* %1 to i8**
  %16 = load i8*, i8** %15, align 8, !noalias !8, !nonnull !4, !noundef !4
  %17 = bitcast i8* %5 to i64**
  %18 = load i64*, i64** %17, align 8, !noalias !8, !nonnull !4, !align !11, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8, !invariant.load !4, !alias.scope !12, !noalias !8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h26f64d41055e2ca2E.exit.i.i.i", label %bb2.i.i.i.i.i.i.i.i

bb2.i.i.i.i.i.i.i.i:                              ; preds = %bb3.i.i.i.i.i.i
  %22 = getelementptr inbounds i64, i64* %18, i64 2
  %23 = load i64, i64* %22, align 8, !range !15, !invariant.load !4, !alias.scope !12, !noalias !8
  tail call void @__rust_dealloc(i8* nonnull %16, i64 %20, i64 %23) #20, !noalias !16
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h26f64d41055e2ca2E.exit.i.i.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h26f64d41055e2ca2E.exit.i.i.i": ; preds = %bb2.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i
  tail call void @__rust_dealloc(i8* nonnull %1, i64 24, i64 8) #20, !noalias !8
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h45ca3e6335126593E.exit"

"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h45ca3e6335126593E.exit": ; preds = %start, %start, %bb5.i.i.i, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h26f64d41055e2ca2E.exit.i.i.i"
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<i32>>
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8ceaaeb21b7f7180E"(%"alloc::vec::Vec<i32>"* nocapture readonly %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
bb4:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17) #20
  %0 = getelementptr inbounds %"alloc::vec::Vec<i32>", %"alloc::vec::Vec<i32>"* %_1, i64 0, i32 0, i32 1
  %_5.i.i.i = load i64, i64* %0, align 8, !alias.scope !20, !noalias !23
  %_4.i.i.i = icmp eq i64 %_5.i.i.i, 0
  br i1 %_4.i.i.i, label %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h985228fc9ebf2877E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb4
  %1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_5.i.i.i, i64 4) #20
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  %not..i.i.i = xor i1 %2, true
  tail call void @llvm.assume(i1 %not..i.i.i) #20
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h985228fc9ebf2877E.exit", label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb2.i.i
  %5 = bitcast %"alloc::vec::Vec<i32>"* %_1 to i8**
  %_126.i.i.i = load i8*, i8** %5, align 8, !alias.scope !20, !noalias !23, !nonnull !4
  tail call void @__rust_dealloc(i8* nonnull %_126.i.i.i, i64 %3, i64 4) #20, !noalias !17
  br label %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h985228fc9ebf2877E.exit"

"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h985228fc9ebf2877E.exit": ; preds = %bb4, %bb2.i.i, %bb2.i.i.i
  ret void
}

; core::ptr::drop_in_place<std::io::stdio::StdoutLock>
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StdoutLock$GT$17hb92ffa8d54ba0a99E"(i64** nocapture readonly %_1) unnamed_addr #1 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %0 = bitcast i64** %_1 to %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"**
  %1 = load %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"*, %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"** %0, align 8, !alias.scope !28, !nonnull !4, !align !11
  %_3.i.i = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* %1, i64 0, i32 4
  %2 = load i32, i32* %_3.i.i, align 4, !noalias !25
  %3 = add i32 %2, -1
  store i32 %3, i32* %_3.i.i, align 4, !noalias !25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %bb5.i.i, label %"_ZN4core3ptr175drop_in_place$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$$GT$17h6abe77619c332eedE.exit"

bb5.i.i:                                          ; preds = %start
  %_6.i.i.i = bitcast %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* %1 to i64*
  store atomic i64 0, i64* %_6.i.i.i monotonic, align 8, !noalias !25
  %_17.i.i = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* %1, i64 0, i32 3
  %_5.i.i.i.i = getelementptr %"std::sys::unix::locks::futex_mutex::Mutex", %"std::sys::unix::locks::futex_mutex::Mutex"* %_17.i.i, i64 0, i32 0, i32 0
  %5 = atomicrmw xchg i32* %_5.i.i.i.i, i32 0 release, align 4, !noalias !25
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %bb2.i.i.i, label %"_ZN4core3ptr175drop_in_place$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$$GT$17h6abe77619c332eedE.exit"

bb2.i.i.i:                                        ; preds = %bb5.i.i
; call std::sys::unix::locks::futex_mutex::Mutex::wake
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17h5f8c37e8f84c7a21E(%"std::sys::unix::locks::futex_mutex::Mutex"* noundef nonnull align 4 %_17.i.i), !noalias !25
  br label %"_ZN4core3ptr175drop_in_place$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$$GT$17h6abe77619c332eedE.exit"

"_ZN4core3ptr175drop_in_place$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$$GT$17h6abe77619c332eedE.exit": ; preds = %start, %bb5.i.i, %bb2.i.i.i
  ret void
}

; core::ptr::drop_in_place<alloc::boxed::Box<alloc::vec::Vec<i32>>>
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr72drop_in_place$LT$alloc..boxed..Box$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h54ca551417979ad5E"(%"alloc::vec::Vec<i32>"** nocapture readonly %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = load %"alloc::vec::Vec<i32>"*, %"alloc::vec::Vec<i32>"** %_1, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35) #20
  %1 = getelementptr inbounds %"alloc::vec::Vec<i32>", %"alloc::vec::Vec<i32>"* %0, i64 0, i32 0, i32 1
  %_5.i.i.i.i = load i64, i64* %1, align 8, !alias.scope !38, !noalias !41
  %_4.i.i.i.i = icmp eq i64 %_5.i.i.i.i, 0
  %2 = bitcast %"alloc::vec::Vec<i32>"* %0 to i8*
  br i1 %_4.i.i.i.i, label %bb3, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %start
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_5.i.i.i.i, i64 4) #20
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  %not..i.i.i.i = xor i1 %4, true
  tail call void @llvm.assume(i1 %not..i.i.i.i) #20
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %bb3, label %bb2.i.i.i.i

bb2.i.i.i.i:                                      ; preds = %bb2.i.i.i
  %7 = bitcast %"alloc::vec::Vec<i32>"* %0 to i8**
  %_126.i.i.i.i = load i8*, i8** %7, align 8, !alias.scope !38, !noalias !41, !nonnull !4
  tail call void @__rust_dealloc(i8* nonnull %_126.i.i.i.i, i64 %5, i64 4) #20, !noalias !35
  %.phi.trans.insert = bitcast %"alloc::vec::Vec<i32>"** %_1 to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8
  br label %bb3

bb3:                                              ; preds = %bb2.i.i.i.i, %bb2.i.i.i, %start
  %8 = phi i8* [ %.pre, %bb2.i.i.i.i ], [ %2, %bb2.i.i.i ], [ %2, %start ]
  tail call void @__rust_dealloc(i8* nonnull %8, i64 24, i64 8) #20
  ret void
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind readnone uwtable willreturn
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h8d2b267ac7c4349cE"(i64** nocapture readnone %_1) unnamed_addr #3 {
start:
  ret void
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc5alloc8box_free17h0c14b3edd9d7fce2E(i64* noundef nonnull %0) unnamed_addr #4 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5efe8127ea0041ceE.exit":
  %_2.i.i = bitcast i64* %0 to i8*
  tail call void @__rust_dealloc(i8* nonnull %_2.i.i, i64 24, i64 8) #20
  ret void
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc5alloc8box_free17h1998711458a3bb9aE(i8* noundef nonnull %0, i64* noalias noundef readonly align 8 dereferenceable(24) %1) unnamed_addr #4 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = getelementptr inbounds i64, i64* %1, i64 1
  %3 = load i64, i64* %2, align 8, !invariant.load !4
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5efe8127ea0041ceE.exit", label %bb2.i

bb2.i:                                            ; preds = %start
  %5 = getelementptr inbounds i64, i64* %1, i64 2
  %6 = load i64, i64* %5, align 8, !range !15, !invariant.load !4
  tail call void @__rust_dealloc(i8* nonnull %0, i64 %3, i64 %6) #20
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5efe8127ea0041ceE.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5efe8127ea0041ceE.exit": ; preds = %start, %bb2.i
  ret void
}

; alloc::raw_vec::finish_grow
; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17hcfd9bf3216707606E(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* noalias nocapture noundef writeonly sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") dereferenceable(24) %0, i64 %new_layout.0, i64 noundef %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture noundef readonly dereferenceable(24) %current_memory) unnamed_addr #5 {
start:
  %1 = icmp eq i64 %new_layout.1, 0
  br i1 %1, label %bb5, label %bb3

bb3:                                              ; preds = %start
  %2 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !range !43, !noundef !4
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb14, label %bb15

bb5:                                              ; preds = %start
  %4 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0, i64 0, i32 1, i64 0
  store i64 %new_layout.0, i64* %4, align 8, !alias.scope !44
  br label %bb24

bb24:                                             ; preds = %bb1.i, %bb3.i5, %bb5
  %.sink1.i.sink = phi i64 [ 0, %bb5 ], [ %new_layout.1, %bb1.i ], [ %new_layout.0, %bb3.i5 ]
  %.sink.i6.sink = phi i64 [ 1, %bb5 ], [ 1, %bb1.i ], [ 0, %bb3.i5 ]
  %5 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0, i64 0, i32 1, i64 1
  store i64 %.sink1.i.sink, i64* %5, align 8
  %6 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0, i64 0, i32 0
  store i64 %.sink.i6.sink, i64* %6, align 8
  ret void

bb15:                                             ; preds = %bb3
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory to i8**
  %ptr = load i8*, i8** %7, align 8, !nonnull !4, !noundef !4
  %8 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory, i64 0, i32 0, i64 1
  %9 = load i64, i64* %8, align 8
  %_29 = icmp eq i64 %3, %new_layout.1
  tail call void @llvm.assume(i1 %_29)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %bb2.i.i, label %bb7.i.i

bb2.i.i:                                          ; preds = %bb15
  %11 = icmp eq i64 %new_layout.0, 0
  br i1 %11, label %bb3.i.i.i, label %bb8.i.i.i

bb3.i.i.i:                                        ; preds = %bb2.i.i
  %12 = inttoptr i64 %new_layout.1 to i8*
  br label %bb21

bb8.i.i.i:                                        ; preds = %bb2.i.i
  %13 = tail call i8* @__rust_alloc(i64 %new_layout.0, i64 %new_layout.1) #20
  br label %bb21

bb7.i.i:                                          ; preds = %bb15
  %_21.i.i = icmp ule i64 %9, %new_layout.0
  tail call void @llvm.assume(i1 %_21.i.i) #20
  %14 = tail call i8* @__rust_realloc(i8* nonnull %ptr, i64 %9, i64 %new_layout.1, i64 %new_layout.0) #20
  br label %bb21

bb14:                                             ; preds = %bb3
  %15 = icmp eq i64 %new_layout.0, 0
  br i1 %15, label %bb3.i.i, label %bb8.i.i3

bb3.i.i:                                          ; preds = %bb14
  %16 = inttoptr i64 %new_layout.1 to i8*
  br label %bb21

bb8.i.i3:                                         ; preds = %bb14
  %17 = tail call i8* @__rust_alloc(i64 %new_layout.0, i64 %new_layout.1) #20
  br label %bb21

bb21:                                             ; preds = %bb8.i.i3, %bb3.i.i, %bb7.i.i, %bb8.i.i.i, %bb3.i.i.i
  %.sroa.0.0.i.i.pn = phi i8* [ %12, %bb3.i.i.i ], [ %13, %bb8.i.i.i ], [ %14, %bb7.i.i ], [ %16, %bb3.i.i ], [ %17, %bb8.i.i3 ]
  %18 = icmp eq i8* %.sroa.0.0.i.i.pn, null
  br i1 %18, label %bb1.i, label %bb3.i5

bb3.i5:                                           ; preds = %bb21
  %19 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0, i64 0, i32 1
  %20 = bitcast [2 x i64]* %19 to i8**
  store i8* %.sroa.0.0.i.i.pn, i8** %20, align 8, !alias.scope !47, !noalias !50
  br label %bb24

bb1.i:                                            ; preds = %bb21
  %21 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0, i64 0, i32 1, i64 0
  store i64 %new_layout.0, i64* %21, align 8, !alias.scope !47, !noalias !50
  br label %bb24
}

; alloc::raw_vec::RawVec<T,A>::reserve_for_push
; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h596f9c08ebb88213E"({ i32*, i64 }* noalias nocapture noundef align 8 dereferenceable(16) %self, i64 %len) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %_30.i = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  %_28.i = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %0 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %len, i64 1) #20
  %1 = extractvalue { i64, i1 } %0, 0
  %2 = extractvalue { i64, i1 } %0, 1
  br i1 %2, label %bb5.i, label %bb8.i

bb8.i:                                            ; preds = %start
  %3 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %self, i64 0, i32 1
  %_20.i = load i64, i64* %3, align 8, !alias.scope !52
  %_19.i = shl i64 %_20.i, 1
  %4 = icmp ugt i64 %_19.i, %1
  %.0.sroa.speculated.i.i.i = select i1 %4, i64 %_19.i, i64 %1
  %5 = icmp ugt i64 %.0.sroa.speculated.i.i.i, 4
  %.0.sroa.speculated.i.i5.i = select i1 %5, i64 %.0.sroa.speculated.i.i.i, i64 4
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.0.sroa.speculated.i.i5.i, i64 4) #20
  %7 = extractvalue { i64, i1 } %6, 1
  %spec.select.i.i = select i1 %7, i64 0, i64 4
  %8 = extractvalue { i64, i1 } %6, 0
  %9 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %_28.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #20, !noalias !52
  %10 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #20, !noalias !52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58) #20
  %_4.i.i = icmp eq i64 %_20.i, 0
  br i1 %_4.i.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E.exit.i", label %bb6.i.i

bb6.i.i:                                          ; preds = %bb8.i
  %11 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_20.i, i64 4) #20
  %12 = extractvalue { i64, i1 } %11, 1
  %13 = extractvalue { i64, i1 } %11, 0
  %not..i.i = xor i1 %12, true
  tail call void @llvm.assume(i1 %not..i.i) #20
  %14 = bitcast { i32*, i64 }* %self to i8**
  %_126.i.i = load i8*, i8** %14, align 8, !alias.scope !60, !noalias !55, !nonnull !4
  %_9.sroa.0.0..sroa_idx.i.i = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i to i8**
  store i8* %_126.i.i, i8** %_9.sroa.0.0..sroa_idx.i.i, align 8, !alias.scope !55, !noalias !60
  %15 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i, i64 0, i32 0, i64 1
  store i64 %13, i64* %15, align 8, !alias.scope !55, !noalias !60
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E.exit.i"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E.exit.i": ; preds = %bb6.i.i, %bb8.i
  %.sink.i6.i = phi i64 [ 4, %bb6.i.i ], [ 0, %bb8.i ]
  %16 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i, i64 0, i32 1
  store i64 %.sink.i6.i, i64* %16, align 8, !alias.scope !55, !noalias !60
; call alloc::raw_vec::finish_grow
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hcfd9bf3216707606E(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* noalias nocapture noundef nonnull sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") dereferenceable(24) %_28.i, i64 %8, i64 noundef %spec.select.i.i, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture noundef nonnull dereferenceable(24) %_30.i) #20, !noalias !52
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #20, !noalias !52
  %17 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %_28.i, i64 0, i32 0
  %_2.i7.i = load i64, i64* %17, align 8, !range !61, !alias.scope !62, !noalias !65, !noundef !4
  %trunc.not.i8.i = icmp eq i64 %_2.i7.i, 0
  br i1 %trunc.not.i8.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h1244be92881a3ed0E.exit.thread", label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h1244be92881a3ed0E.exit"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h1244be92881a3ed0E.exit.thread": ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E.exit.i"
  %18 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %_28.i, i64 0, i32 1
  %19 = bitcast [2 x i64]* %18 to i8**
  %v.0.i39.i = load i8*, i8** %19, align 8, !alias.scope !62, !noalias !65, !nonnull !4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #20, !noalias !52
  %20 = bitcast { i32*, i64 }* %self to i8**
  store i8* %v.0.i39.i, i8** %20, align 8, !alias.scope !67
  store i64 %.0.sroa.speculated.i.i5.i, i64* %3, align 8, !alias.scope !67
  ret void

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h1244be92881a3ed0E.exit": ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E.exit.i"
  %21 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %_28.i, i64 0, i32 1, i64 0
  %e.0.i.i = load i64, i64* %21, align 8, !alias.scope !62, !noalias !65
  %22 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %_28.i, i64 0, i32 1, i64 1
  %e.1.i10.i = load i64, i64* %22, align 8, !range !43, !alias.scope !62, !noalias !65, !noundef !4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #20, !noalias !52
  %cond = icmp eq i64 %e.1.i10.i, 0
  br i1 %cond, label %bb5.i, label %bb6.i

bb5.i:                                            ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h1244be92881a3ed0E.exit", %start
; call alloc::raw_vec::capacity_overflow
  tail call void @_ZN5alloc7raw_vec17capacity_overflow17hfbf51a358cd44932E() #22
  unreachable

bb6.i:                                            ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h1244be92881a3ed0E.exit"
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17hc8c4fc5c0faef121E(i64 %e.0.i.i, i64 noundef %e.1.i10.i) #22
  unreachable
}

; main::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4main4main17h0ae5002699cdca23E() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
bb2.i:
  %e.i = alloca i8*, align 8
  %_14 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %_12 = alloca i64*, align 8
  %stdout = alloca i64*, align 8
  %_5 = alloca %"alloc::vec::Vec<i32>", align 8
  %bbox = alloca %"alloc::vec::Vec<i32>"*, align 8
  %vec = alloca %"alloc::vec::Vec<i32>", align 8
  %0 = bitcast %"alloc::vec::Vec<i32>"* %vec to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0)
  %1 = getelementptr inbounds %"alloc::vec::Vec<i32>", %"alloc::vec::Vec<i32>"* %vec, i64 0, i32 0, i32 0
  store i32* inttoptr (i64 4 to i32*), i32** %1, align 8, !alias.scope !70
  %2 = getelementptr inbounds %"alloc::vec::Vec<i32>", %"alloc::vec::Vec<i32>"* %vec, i64 0, i32 0, i32 1
  %3 = bitcast i64* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false) #20, !alias.scope !70
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %4 = getelementptr inbounds %"alloc::vec::Vec<i32>", %"alloc::vec::Vec<i32>"* %vec, i64 0, i32 1
  %_6.i = getelementptr inbounds %"alloc::vec::Vec<i32>", %"alloc::vec::Vec<i32>"* %vec, i64 0, i32 0
; invoke alloc::raw_vec::RawVec<T,A>::reserve_for_push
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h596f9c08ebb88213E"({ i32*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_6.i, i64 0)
          to label %bb2 unwind label %bb14

bb2:                                              ; preds = %bb2.i
  %_13.pre.i = load i64, i64* %4, align 8, !alias.scope !73
  %_2.i.i.i.pre = load i32*, i32** %1, align 8, !alias.scope !76
  %5 = getelementptr inbounds i32, i32* %_2.i.i.i.pre, i64 %_13.pre.i
  store i32 123, i32* %5, align 4, !noalias !73
  %6 = add i64 %_13.pre.i, 1
  store i64 %6, i64* %4, align 8, !alias.scope !73
  %7 = bitcast %"alloc::vec::Vec<i32>"** %bbox to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7)
  %8 = bitcast %"alloc::vec::Vec<i32>"* %_5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %8, i8* noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %9 = tail call align 8 dereferenceable_or_null(24) i8* @__rust_alloc(i64 24, i64 8) #20, !noalias !81
  %10 = icmp eq i8* %9, null
  br i1 %10, label %bb3.i.i, label %bb3

bb3.i.i:                                          ; preds = %bb2
; invoke alloc::alloc::handle_alloc_error
  invoke void @_ZN5alloc5alloc18handle_alloc_error17hc8c4fc5c0faef121E(i64 24, i64 noundef 8) #22
          to label %.noexc.i unwind label %cleanup.i, !noalias !81

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

cleanup.i:                                        ; preds = %bb3.i.i
  %11 = landingpad { i8*, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8ceaaeb21b7f7180E"(%"alloc::vec::Vec<i32>"* nonnull %_5) #21
          to label %bb13 unwind label %abort.i

abort.i:                                          ; preds = %cleanup.i
  %12 = landingpad { i8*, i32 }
          cleanup
; call core::panicking::panic_no_unwind
  tail call void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() #23, !noalias !81
  unreachable

bb3:                                              ; preds = %bb2
  %13 = bitcast i8* %9 to %"alloc::vec::Vec<i32>"*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %9, i8* noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %14 = bitcast %"alloc::vec::Vec<i32>"** %bbox to i8**
  store i8* %9, i8** %14, align 8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8)
  %15 = getelementptr inbounds %"alloc::vec::Vec<i32>", %"alloc::vec::Vec<i32>"* %13, i64 0, i32 1
  %_4.i.i = load i64, i64* %15, align 8, !alias.scope !84
  %_5.not.i.i.i = icmp eq i64 %_4.i.i, 0
  br i1 %_5.not.i.i.i, label %panic.i.i.i, label %bb4, !prof !89

panic.i.i.i:                                      ; preds = %bb3
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17ha6e6615eae13afdcE(i64 0, i64 0, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc160 to %"core::panic::location::Location"*)) #22
          to label %.noexc15 unwind label %cleanup1

.noexc15:                                         ; preds = %panic.i.i.i
  unreachable

bb12:                                             ; preds = %cleanup2.body, %cleanup1
  %.pn = phi { i8*, i32 } [ %16, %cleanup1 ], [ %eh.lpad-body19, %cleanup2.body ]
; invoke core::ptr::drop_in_place<alloc::boxed::Box<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$alloc..boxed..Box$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h54ca551417979ad5E"(%"alloc::vec::Vec<i32>"** nonnull %bbox) #21
          to label %bb13 unwind label %abort

cleanup1:                                         ; preds = %bb2.i.i.i.i, %panic.i.i.i, %bb5, %bb4
  %16 = landingpad { i8*, i32 }
          cleanup
  br label %bb12

bb4:                                              ; preds = %bb3
  %17 = bitcast i64** %stdout to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17)
  %18 = bitcast i64** %_12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18)
; invoke std::io::stdio::stdout
  %19 = invoke noundef nonnull align 8 i64* @_ZN3std2io5stdio6stdout17h5243749f8d266e4fE()
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  store i64* %19, i64** %_12, align 8
; invoke std::io::stdio::Stdout::lock
  %20 = invoke noundef nonnull align 8 i64* @_ZN3std2io5stdio6Stdout4lock17hb686d131b4cd2c15E(i64** noalias noundef nonnull readonly align 8 dereferenceable(8) %_12)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb5
  store i64* %20, i64** %stdout, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18)
  %21 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21)
; invoke <std::io::stdio::StdoutLock as std::io::Write>::write
  invoke void @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$5write17h9e86ff5c8700b5cfE"(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture noundef nonnull sret(%"core::result::Result<usize, std::io::error::Error>") dereferenceable(16) %_14, i64** noalias noundef nonnull align 8 dereferenceable(8) %stdout, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [11 x i8] }>* @alloc1 to [0 x i8]*), i64 11)
          to label %bb7 unwind label %cleanup2

cleanup2:                                         ; preds = %bb6
  %22 = landingpad { i8*, i32 }
          cleanup
  br label %cleanup2.body

cleanup2.body:                                    ; preds = %cleanup.i17, %cleanup2
  %eh.lpad-body19 = phi { i8*, i32 } [ %22, %cleanup2 ], [ %28, %cleanup.i17 ]
; invoke core::ptr::drop_in_place<std::io::stdio::StdoutLock>
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StdoutLock$GT$17hb92ffa8d54ba0a99E"(i64** nonnull %stdout) #21
          to label %bb12 unwind label %abort

bb7:                                              ; preds = %bb6
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %23 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>", %"core::result::Result<usize, std::io::error::Error>"* %_14, i64 0, i32 0
  %_2.i = load i64, i64* %23, align 8, !range !61, !alias.scope !90, !noundef !4
  %trunc.not.i = icmp eq i64 %_2.i, 0
  br i1 %trunc.not.i, label %bb8, label %bb1.i

bb1.i:                                            ; preds = %bb7
  %24 = bitcast i8** %e.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24), !noalias !90
  %25 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>", %"core::result::Result<usize, std::io::error::Error>"* %_14, i64 0, i32 1
  %26 = bitcast [1 x i64]* %25 to i8**
  %27 = load i8*, i8** %26, align 8, !alias.scope !90, !nonnull !4, !noundef !4
  store i8* %27, i8** %e.i, align 8, !noalias !90
  %_7.0.i = bitcast i8** %e.i to {}*
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17h42ad8e915aa0a906E([0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [43 x i8] }>* @alloc139 to [0 x i8]*), i64 43, {}* noundef nonnull align 1 %_7.0.i, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc162 to %"core::panic::location::Location"*)) #22
          to label %unreachable.i unwind label %cleanup.i17, !noalias !90

cleanup.i17:                                      ; preds = %bb1.i
  %28 = landingpad { i8*, i32 }
          cleanup
; invoke core::ptr::drop_in_place<std::io::error::Error>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h1c235449e88d39ebE"(i8** nonnull %e.i) #21
          to label %cleanup2.body unwind label %abort.i18, !noalias !90

unreachable.i:                                    ; preds = %bb1.i
  unreachable

abort.i18:                                        ; preds = %cleanup.i17
  %29 = landingpad { i8*, i32 }
          cleanup
; call core::panicking::panic_no_unwind
  call void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() #23, !noalias !90
  unreachable

bb8:                                              ; preds = %bb7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %30 = bitcast i64** %stdout to %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"**
  %31 = load %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"*, %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"** %30, align 8, !alias.scope !96, !nonnull !4, !align !11
  %_3.i.i.i = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* %31, i64 0, i32 4
  %32 = load i32, i32* %_3.i.i.i, align 4, !noalias !93
  %33 = add i32 %32, -1
  store i32 %33, i32* %_3.i.i.i, align 4, !noalias !93
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %bb5.i.i.i, label %bb9

bb5.i.i.i:                                        ; preds = %bb8
  %_6.i.i.i.i = bitcast %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* %31 to i64*
  store atomic i64 0, i64* %_6.i.i.i.i monotonic, align 8, !noalias !93
  %_17.i.i.i = getelementptr inbounds %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>", %"std::sys_common::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>"* %31, i64 0, i32 3
  %_5.i.i.i.i.i = getelementptr %"std::sys::unix::locks::futex_mutex::Mutex", %"std::sys::unix::locks::futex_mutex::Mutex"* %_17.i.i.i, i64 0, i32 0, i32 0
  %35 = atomicrmw xchg i32* %_5.i.i.i.i.i, i32 0 release, align 4, !noalias !93
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %bb2.i.i.i.i, label %bb9

bb2.i.i.i.i:                                      ; preds = %bb5.i.i.i
; invoke std::sys::unix::locks::futex_mutex::Mutex::wake
  invoke void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17h5f8c37e8f84c7a21E(%"std::sys::unix::locks::futex_mutex::Mutex"* noundef nonnull align 4 %_17.i.i.i)
          to label %bb9 unwind label %cleanup1

abort:                                            ; preds = %bb14, %bb12, %cleanup2.body
  %37 = landingpad { i8*, i32 }
          cleanup
; call core::panicking::panic_no_unwind
  call void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() #23
  unreachable

bb9:                                              ; preds = %bb5.i.i.i, %bb8, %bb2.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17)
  %38 = load %"alloc::vec::Vec<i32>"*, %"alloc::vec::Vec<i32>"** %bbox, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !103) #20
  %39 = getelementptr inbounds %"alloc::vec::Vec<i32>", %"alloc::vec::Vec<i32>"* %38, i64 0, i32 0, i32 1
  %_5.i.i.i.i.i21 = load i64, i64* %39, align 8, !alias.scope !106, !noalias !109
  %_4.i.i.i.i.i = icmp eq i64 %_5.i.i.i.i.i21, 0
  br i1 %_4.i.i.i.i.i, label %bb10, label %bb2.i.i.i.i22

bb2.i.i.i.i22:                                    ; preds = %bb9
  %40 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_5.i.i.i.i.i21, i64 4) #20
  %41 = extractvalue { i64, i1 } %40, 1
  %42 = extractvalue { i64, i1 } %40, 0
  %not..i.i.i.i.i = xor i1 %41, true
  call void @llvm.assume(i1 %not..i.i.i.i.i) #20
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %bb10, label %bb2.i.i.i.i.i

bb2.i.i.i.i.i:                                    ; preds = %bb2.i.i.i.i22
  %44 = bitcast %"alloc::vec::Vec<i32>"* %38 to i8**
  %_126.i.i.i.i.i = load i8*, i8** %44, align 8, !alias.scope !106, !noalias !109, !nonnull !4
  call void @__rust_dealloc(i8* nonnull %_126.i.i.i.i.i, i64 %42, i64 4) #20, !noalias !103
  br label %bb10

bb10:                                             ; preds = %bb2.i.i.i.i.i, %bb2.i.i.i.i22, %bb9
  %45 = bitcast %"alloc::vec::Vec<i32>"* %38 to i8*
  call void @__rust_dealloc(i8* nonnull %45, i64 24, i64 8) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0)
  ret void

bb13:                                             ; preds = %bb12, %cleanup.i, %bb14
  %.pn1226 = phi { i8*, i32 } [ %46, %bb14 ], [ %11, %cleanup.i ], [ %.pn, %bb12 ]
  resume { i8*, i32 } %.pn1226

bb14:                                             ; preds = %bb2.i
  %46 = landingpad { i8*, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8ceaaeb21b7f7180E"(%"alloc::vec::Vec<i32>"* nonnull %vec) #21
          to label %bb13 unwind label %abort
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32, i32 noundef, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h6612c8a7a6861b8bE({}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24), i64, i8**) unnamed_addr #1

; std::sys::unix::locks::futex_mutex::Mutex::wake
; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17h5f8c37e8f84c7a21E(%"std::sys::unix::locks::futex_mutex::Mutex"* noundef nonnull align 4) unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #9

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; core::panicking::panic_no_unwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() unnamed_addr #10

; <std::io::error::Error as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c9d3e6f2f9e3a87E"(i8** noalias noundef readonly align 8 dereferenceable(8), %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h42ad8e915aa0a906E([0 x i8]* noalias noundef nonnull readonly align 1, i64, {}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24), %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #11

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #12

; alloc::alloc::handle_alloc_error
; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17hc8c4fc5c0faef121E(i64, i64 noundef) unnamed_addr #13

; Function Attrs: nofree nounwind nonlazybind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #14

; Function Attrs: nounwind nonlazybind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare noalias i8* @__rust_realloc(i8*, i64, i64, i64) unnamed_addr #15

; alloc::raw_vec::capacity_overflow
; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17hfbf51a358cd44932E() unnamed_addr #16

; core::panicking::panic_bounds_check
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17ha6e6615eae13afdcE(i64, i64, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #11

; std::io::stdio::stdout
; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 i64* @_ZN3std2io5stdio6stdout17h5243749f8d266e4fE() unnamed_addr #1

; std::io::stdio::Stdout::lock
; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 i64* @_ZN3std2io5stdio6Stdout4lock17hb686d131b4cd2c15E(i64** noalias noundef readonly align 8 dereferenceable(8)) unnamed_addr #1

; <std::io::stdio::StdoutLock as std::io::Write>::write
; Function Attrs: nonlazybind uwtable
declare void @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$5write17h9e86ff5c8700b5cfE"(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture noundef sret(%"core::result::Result<usize, std::io::error::Error>") dereferenceable(16), i64** noalias noundef align 8 dereferenceable(8), [0 x i8]* noalias noundef nonnull readonly align 1, i64) unnamed_addr #1

; Function Attrs: nonlazybind
define i32 @main(i32 %0, i8** %1) unnamed_addr #17 {
top:
  %_8.i = alloca i64*, align 8
  %2 = sext i32 %0 to i64
  %3 = bitcast i64** %_8.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3)
  %4 = bitcast i64** %_8.i to void ()**
  store void ()* @_ZN4main4main17h0ae5002699cdca23E, void ()** %4, align 8
  %_5.0.i = bitcast i64** %_8.i to {}*
; call std::rt::lang_start_internal
  %5 = call i64 @_ZN3std2rt19lang_start_internal17h6612c8a7a6861b8bE({}* noundef nonnull align 1 %_5.0.i, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.0 to [3 x i64]*), i64 %2, i8** %1)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3)
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind readnone uwtable willreturn "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #5 = { noinline nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #7 = { cold nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #12 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #13 = { cold noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #14 = { nofree nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #16 = { noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #17 = { nonlazybind "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #18 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #19 = { argmemonly nofree nounwind willreturn writeonly }
attributes #20 = { nounwind }
attributes #21 = { noinline }
attributes #22 = { noreturn }
attributes #23 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 3341081}
!4 = !{}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8dc670e5f0e5ea33E: %_1"}
!7 = distinct !{!7, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8dc670e5f0e5ea33E"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17hadb025f24e244892E: %self"}
!10 = distinct !{!10, !"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17hadb025f24e244892E"}
!11 = !{i64 8}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN5alloc5alloc8box_free17h1998711458a3bb9aE: argument 0"}
!14 = distinct !{!14, !"_ZN5alloc5alloc8box_free17h1998711458a3bb9aE"}
!15 = !{i64 1, i64 0}
!16 = !{!13, !9}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7c877fcd69f2f10E: %self"}
!19 = distinct !{!19, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7c877fcd69f2f10E"}
!20 = !{!21, !18}
!21 = distinct !{!21, !22, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E: %self"}
!22 = distinct !{!22, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E: argument 0"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9313a4ba746cf7b0E: %self"}
!27 = distinct !{!27, !"_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9313a4ba746cf7b0E"}
!28 = !{!29, !31, !33, !26}
!29 = distinct !{!29, !30, !"_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17h057c7222bc5a1276E: %self"}
!30 = distinct !{!30, !"_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17h057c7222bc5a1276E"}
!31 = distinct !{!31, !32, !"_ZN4core3pin12Pin$LT$P$GT$6as_ref17hc71988f572d87192E: %self"}
!32 = distinct !{!32, !"_ZN4core3pin12Pin$LT$P$GT$6as_ref17hc71988f572d87192E"}
!33 = distinct !{!33, !34, !"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd2acaf1db9619d9cE: %self"}
!34 = distinct !{!34, !"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd2acaf1db9619d9cE"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7c877fcd69f2f10E: %self"}
!37 = distinct !{!37, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7c877fcd69f2f10E"}
!38 = !{!39, !36}
!39 = distinct !{!39, !40, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E: %self"}
!40 = distinct !{!40, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E: argument 0"}
!43 = !{i64 0, i64 -9223372036854775807}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4416e5285e93c129E: argument 0"}
!46 = distinct !{!46, !"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4416e5285e93c129E"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hd33ecd7488b3e0b9E: argument 0"}
!49 = distinct !{!49, !"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hd33ecd7488b3e0b9E"}
!50 = !{!51}
!51 = distinct !{!51, !49, !"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hd33ecd7488b3e0b9E: %op"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h1244be92881a3ed0E: %self"}
!54 = distinct !{!54, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h1244be92881a3ed0E"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E: argument 0"}
!57 = distinct !{!57, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E"}
!58 = !{!59}
!59 = distinct !{!59, !57, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E: %self"}
!60 = !{!59, !53}
!61 = !{i64 0, i64 2}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hc477521956970f98E: %self"}
!64 = distinct !{!64, !"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hc477521956970f98E"}
!65 = !{!66, !53}
!66 = distinct !{!66, !64, !"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hc477521956970f98E: argument 0"}
!67 = !{!68, !53}
!68 = distinct !{!68, !69, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hd49fb2bf929c168eE: %self"}
!69 = distinct !{!69, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hd49fb2bf929c168eE"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN5alloc3vec12Vec$LT$T$GT$3new17hba054cfc455dbe8dE: argument 0"}
!72 = distinct !{!72, !"_ZN5alloc3vec12Vec$LT$T$GT$3new17hba054cfc455dbe8dE"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc828dc713e9cb965E: %self"}
!75 = distinct !{!75, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc828dc713e9cb965E"}
!76 = !{!77, !79, !74}
!77 = distinct !{!77, !78, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h43f9c8c7f83eeaf7E: %self"}
!78 = distinct !{!78, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h43f9c8c7f83eeaf7E"}
!79 = distinct !{!79, !80, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h061a6318c4609715E: %self"}
!80 = distinct !{!80, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h061a6318c4609715E"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h478e74f45322a7d3E: %x"}
!83 = distinct !{!83, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h478e74f45322a7d3E"}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9c1df8d42c732298E: %self"}
!86 = distinct !{!86, !"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9c1df8d42c732298E"}
!87 = distinct !{!87, !88, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h380da24fde28ccdeE: %self"}
!88 = distinct !{!88, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h380da24fde28ccdeE"}
!89 = !{!"branch_weights", i32 1, i32 2000}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha6876544cb1c40bbE: %self"}
!92 = distinct !{!92, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha6876544cb1c40bbE"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9313a4ba746cf7b0E: %self"}
!95 = distinct !{!95, !"_ZN96_$LT$std..sys_common..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9313a4ba746cf7b0E"}
!96 = !{!97, !99, !101, !94}
!97 = distinct !{!97, !98, !"_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17h057c7222bc5a1276E: %self"}
!98 = distinct !{!98, !"_ZN49_$LT$$RF$T$u20$as$u20$core..ops..deref..Deref$GT$5deref17h057c7222bc5a1276E"}
!99 = distinct !{!99, !100, !"_ZN4core3pin12Pin$LT$P$GT$6as_ref17hc71988f572d87192E: %self"}
!100 = distinct !{!100, !"_ZN4core3pin12Pin$LT$P$GT$6as_ref17hc71988f572d87192E"}
!101 = distinct !{!101, !102, !"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd2acaf1db9619d9cE: %self"}
!102 = distinct !{!102, !"_ZN67_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd2acaf1db9619d9cE"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7c877fcd69f2f10E: %self"}
!105 = distinct !{!105, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7c877fcd69f2f10E"}
!106 = !{!107, !104}
!107 = distinct !{!107, !108, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E: %self"}
!108 = distinct !{!108, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E"}
!109 = !{!110}
!110 = distinct !{!110, !108, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2d6feb2ecdecca99E: argument 0"}
