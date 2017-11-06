.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;
.super Ljava/lang/Object;
.source "AirView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Gravity"
.end annotation


# static fields
.field public static final BOTTOM_UNDER:I

.field public static final CENTER_HORIZONTAL:I

.field public static final LEFT:I

.field public static final LEFT_CENTER_AXIS:I

.field public static final NO_GRAVITY:I

.field public static final RIGHT:I

.field public static final RIGHT_CENTER_AXIS:I

.field public static final TOP_ABOVE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->TOP_ABOVE:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->TOP_ABOVE:I

    .line 48
    sget v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->BOTTOM_UNDER:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->BOTTOM_UNDER:I

    .line 50
    sget v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->RIGHT:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->RIGHT:I

    .line 52
    sget v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->LEFT:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->LEFT:I

    .line 54
    sget v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->NO_GRAVITY:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->NO_GRAVITY:I

    .line 56
    sget v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER_HORIZONTAL:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    .line 58
    sget v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->LEFT_CENTER_AXIS:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->LEFT_CENTER_AXIS:I

    .line 60
    sget v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->RIGHT_CENTER_AXIS:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->RIGHT_CENTER_AXIS:I

    return-void
.end method
