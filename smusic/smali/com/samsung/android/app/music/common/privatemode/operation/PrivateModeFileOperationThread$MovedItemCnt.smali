.class Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;
.super Ljava/lang/Object;
.source "PrivateModeFileOperationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MovedItemCnt"
.end annotation


# instance fields
.field public alreadymoved:I

.field public moved:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->moved:I

    .line 93
    iput v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->alreadymoved:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$1;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;-><init>()V

    return-void
.end method