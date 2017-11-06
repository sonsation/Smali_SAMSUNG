.class public Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;
.super Ljava/lang/Object;
.source "SemStatusBarManagerCompat.java"


# static fields
.field public static final DISABLE_BACK:I

.field public static final DISABLE_HOME:I

.field public static final DISABLE_RECENT:I

.field private static final NONE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 19
    const/high16 v0, 0x400000

    sput v0, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_BACK:I

    .line 20
    const/high16 v0, 0x200000

    sput v0, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_HOME:I

    .line 21
    const/high16 v0, 0x1000000

    sput v0, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_RECENT:I

    .line 27
    :goto_0
    return-void

    .line 23
    :cond_0
    sput v1, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_BACK:I

    .line 24
    sput v1, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_HOME:I

    .line 25
    sput v1, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_RECENT:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
