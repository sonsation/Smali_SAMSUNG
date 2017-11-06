.class public Lcom/samsung/android/app/music/support/SamsungSdk;
.super Ljava/lang/Object;
.source "SamsungSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/SamsungSdk$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final SUPPORT_SDL:Z

.field public static final SUPPORT_SEP:Z

.field public static final VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SDL:Z

    .line 11
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SDL:Z

    if-nez v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SDL:Z

    if-eqz v0, :cond_2

    const v0, 0x186a0

    sget v1, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    add-int/2addr v0, v1

    :goto_2
    sput v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    return-void

    :cond_0
    move v0, v2

    .line 9
    goto :goto_0

    :cond_1
    move v1, v2

    .line 11
    goto :goto_1

    .line 13
    :cond_2
    const v0, 0x30d40

    sget v1, Landroid/os/Build$VERSION;->SEM_INT:I

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
