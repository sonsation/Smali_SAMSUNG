.class public interface abstract Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;
.super Ljava/lang/Object;
.source "SeslAbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScrollListener"
.end annotation


# static fields
.field public static final SCROLL_STATE_FLING:I = 0x2

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_TOUCH_SCROLL:I = 0x1


# virtual methods
.method public abstract onScroll(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;III)V
.end method

.method public abstract onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)V
.end method