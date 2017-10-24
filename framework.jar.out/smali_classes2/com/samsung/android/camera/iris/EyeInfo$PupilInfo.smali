.class public Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;
.super Ljava/lang/Object;
.source "EyeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/EyeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PupilInfo"
.end annotation


# instance fields
.field public mDistance:I

.field public mMsgId:I

.field public mOpening:I

.field public mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    .line 179
    iput v1, p0, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mDistance:I

    .line 181
    iput v1, p0, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mOpening:I

    .line 183
    iput v1, p0, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mMsgId:I

    .line 186
    return-void
.end method
