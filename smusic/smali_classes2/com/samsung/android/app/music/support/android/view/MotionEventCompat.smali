.class public Lcom/samsung/android/app/music/support/android/view/MotionEventCompat;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# static fields
.field public static final ACTION_PEN_CANCEL:I

.field public static final ACTION_PEN_DOWN:I

.field public static final ACTION_PEN_UP:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xd6

    const/16 v2, 0xd4

    const/16 v1, 0xd3

    .line 16
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 17
    sput v2, Lcom/samsung/android/app/music/support/android/view/MotionEventCompat;->ACTION_PEN_UP:I

    .line 18
    sput v1, Lcom/samsung/android/app/music/support/android/view/MotionEventCompat;->ACTION_PEN_DOWN:I

    .line 19
    sput v3, Lcom/samsung/android/app/music/support/android/view/MotionEventCompat;->ACTION_PEN_CANCEL:I

    .line 25
    :goto_0
    return-void

    .line 21
    :cond_0
    sput v2, Lcom/samsung/android/app/music/support/android/view/MotionEventCompat;->ACTION_PEN_UP:I

    .line 22
    sput v1, Lcom/samsung/android/app/music/support/android/view/MotionEventCompat;->ACTION_PEN_DOWN:I

    .line 23
    sput v3, Lcom/samsung/android/app/music/support/android/view/MotionEventCompat;->ACTION_PEN_CANCEL:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
