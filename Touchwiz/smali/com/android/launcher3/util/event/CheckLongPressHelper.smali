.class public Lcom/android/launcher3/util/event/CheckLongPressHelper;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;
    }
.end annotation


# static fields
.field public static final LONG_PRESS_TIME_OUT_DEFAULT:I = 0x12c

.field public static final LONG_PRESS_TIME_OUT_SHORT:I = 0xc8

.field private static final LONG_PRESS_TIME_OUT_SYSTEM_DEFAULT:I = 0x1f4


# instance fields
.field private mHasPerformedLongPress:Z

.field private mListener:Landroid/view/View$OnLongClickListener;

.field private mLongPressTimeout:I

.field private mPendingCheckForLongPress:Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mLongPressTimeout:I

    .line 51
    iput-object p1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mLongPressTimeout:I

    .line 55
    iput-object p1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 56
    iput-object p2, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/util/event/CheckLongPressHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/event/CheckLongPressHelper;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/util/event/CheckLongPressHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/event/CheckLongPressHelper;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/util/event/CheckLongPressHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/util/event/CheckLongPressHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/util/event/CheckLongPressHelper;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/event/CheckLongPressHelper;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;

    .line 82
    :cond_0
    return-void
.end method

.method public hasPerformedLongPress()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return v0
.end method

.method public postCheckForLongPress()V
    .locals 6

    .prologue
    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 69
    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;-><init>(Lcom/android/launcher3/util/event/CheckLongPressHelper;)V

    iput-object v1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;

    .line 72
    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    .line 73
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;

    const/16 v3, 0x1f4

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mLongPressTimeout:I

    .end local v0    # "timeout":I
    :cond_1
    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 0
    .param p1, "longPressTimeout"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper;->mLongPressTimeout:I

    .line 64
    return-void
.end method
