.class public final Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;
.super Ljava/lang/Object;
.source "HoverPopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gravity"
.end annotation


# static fields
.field public static final BOTTOM:I

.field public static final BOTTOM_UNDER:I

.field public static final CENTER:I

.field public static final CENTER_HORIZONTAL:I

.field public static final CENTER_HORIZONTAL_ON_POINT:I

.field public static final CENTER_HORIZONTAL_ON_WINDOW:I

.field public static final CENTER_VERTICAL:I

.field public static final HORIZONTAL_GRAVITY_MASK:I

.field public static final LEFT:I

.field public static final LEFT_CENTER_AXIS:I

.field public static final LEFT_OUTSIDE:I

.field public static final NO_GRAVITY:I

.field public static final RIGHT:I

.field public static final RIGHT_CENTER_AXIS:I

.field public static final RIGHT_OUTSIDE:I

.field public static final TOP:I

.field public static final TOP_ABOVE:I

.field public static final VERTICAL_GRAVITY_MASK:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x50

    :goto_0
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->BOTTOM:I

    .line 34
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x5050

    :goto_1
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->BOTTOM_UNDER:I

    .line 38
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x11

    :goto_2
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER:I

    .line 42
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    :cond_0
    sput v2, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER_HORIZONTAL:I

    .line 46
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x201

    :goto_3
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER_HORIZONTAL_ON_POINT:I

    .line 50
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x101

    :goto_4
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER_HORIZONTAL_ON_WINDOW:I

    .line 54
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    :cond_1
    sput v5, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER_VERTICAL:I

    .line 58
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_a

    const/16 v0, 0xf0f

    :goto_5
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->HORIZONTAL_GRAVITY_MASK:I

    .line 62
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    :cond_2
    sput v3, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->LEFT:I

    .line 65
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x103

    :goto_6
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->LEFT_CENTER_AXIS:I

    .line 69
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x303

    :goto_7
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->LEFT_OUTSIDE:I

    .line 73
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    :cond_3
    sput v1, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->NO_GRAVITY:I

    .line 77
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_4

    :cond_4
    sput v4, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->RIGHT:I

    .line 80
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_d

    const/16 v0, 0x105

    :goto_8
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->RIGHT_CENTER_AXIS:I

    .line 84
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x505

    :goto_9
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->RIGHT_OUTSIDE:I

    .line 88
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_f

    const/16 v0, 0x30

    :goto_a
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->TOP:I

    .line 91
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x3030

    :goto_b
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->TOP_ABOVE:I

    .line 95
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_11

    const v0, 0xf0f0

    :goto_c
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->VERTICAL_GRAVITY_MASK:I

    return-void

    .line 30
    :cond_5
    const/16 v0, 0x50

    goto/16 :goto_0

    .line 34
    :cond_6
    const/16 v0, 0x5050

    goto :goto_1

    .line 38
    :cond_7
    const/16 v0, 0x11

    goto :goto_2

    .line 46
    :cond_8
    const/16 v0, 0x201

    goto :goto_3

    .line 50
    :cond_9
    const/16 v0, 0x101

    goto :goto_4

    .line 58
    :cond_a
    const/16 v0, 0xf0f

    goto :goto_5

    .line 65
    :cond_b
    const/16 v0, 0x103

    goto :goto_6

    .line 69
    :cond_c
    const/16 v0, 0x303

    goto :goto_7

    .line 80
    :cond_d
    const/16 v0, 0x105

    goto :goto_8

    .line 84
    :cond_e
    const/16 v0, 0x505

    goto :goto_9

    .line 88
    :cond_f
    const/16 v0, 0x30

    goto :goto_a

    .line 91
    :cond_10
    const/16 v0, 0x3030

    goto :goto_b

    .line 95
    :cond_11
    const v0, 0xf0f0

    goto :goto_c
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
