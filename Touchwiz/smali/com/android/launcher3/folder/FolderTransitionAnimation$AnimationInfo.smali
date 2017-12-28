.class Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;
.super Ljava/lang/Object;
.source "FolderTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/FolderTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationInfo"
.end annotation


# instance fields
.field isValidView:Z

.field location:[I

.field scaleBy:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    .line 101
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    .line 102
    return-void
.end method
