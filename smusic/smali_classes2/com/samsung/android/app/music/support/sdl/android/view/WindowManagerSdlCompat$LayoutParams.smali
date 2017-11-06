.class public Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;
.super Ljava/lang/Object;
.source "WindowManagerSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final MULTIWINDOW_FLAG_DISABLE_FLOATING_WINDOW:I

.field public static final PRIVATE_FLAG_NO_MOVE_ANIMATION:I

.field public static final SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:I

.field public static final SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

.field public static final SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I

.field private static final UNDEFINED:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x837

    const/16 v4, 0x835

    const/16 v3, 0x16

    const/4 v1, 0x0

    .line 21
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v2, 0x899

    if-lt v0, v2, :cond_3

    const/16 v0, 0x200

    :goto_0
    sput v0, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I

    .line 26
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    if-ge v0, v5, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    :cond_0
    const/16 v0, 0x80

    :goto_1
    sput v0, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->MULTIWINDOW_FLAG_DISABLE_FLOATING_WINDOW:I

    .line 31
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    if-lt v0, v4, :cond_5

    const/4 v0, 0x1

    :goto_2
    sput v0, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    .line 36
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    if-ge v0, v5, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_6

    :cond_1
    const/4 v0, 0x2

    :goto_3
    sput v0, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:I

    .line 41
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    if-lt v0, v4, :cond_2

    const/16 v1, 0x40

    :cond_2
    sput v1, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->PRIVATE_FLAG_NO_MOVE_ANIMATION:I

    return-void

    :cond_3
    move v0, v1

    .line 21
    goto :goto_0

    :cond_4
    move v0, v1

    .line 26
    goto :goto_1

    :cond_5
    move v0, v1

    .line 31
    goto :goto_2

    :cond_6
    move v0, v1

    .line 36
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMultiWindowFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "flags"    # I

    .prologue
    .line 58
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 59
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 61
    :cond_0
    return-void
.end method

.method public static addPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "flags"    # I

    .prologue
    .line 64
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 65
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 67
    :cond_0
    return-void
.end method

.method public static addSamsungFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "flags"    # I

    .prologue
    .line 46
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 47
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 49
    :cond_0
    return-void
.end method

.method public static clearSamsungFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "flags"    # I

    .prologue
    .line 52
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 53
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 55
    :cond_0
    return-void
.end method
