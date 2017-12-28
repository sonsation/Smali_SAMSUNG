.class Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;
.super Ljava/lang/Object;
.source "DefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolderTagInfo"
.end annotation


# instance fields
.field protected mFolderCellX:I

.field protected mFolderCellY:I

.field protected mFolderScreen:I

.field protected mFolderTitle:Ljava/lang/String;

.field protected mIsPostPosition:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mFolderScreen:I

    .line 233
    iput v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mFolderCellX:I

    iput v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mFolderCellY:I

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mIsPostPosition:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/common/model/DefaultLayoutParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/common/model/DefaultLayoutParser$1;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;-><init>()V

    return-void
.end method


# virtual methods
.method setFolderInfo(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 239
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mFolderTitle:Ljava/lang/String;

    .line 240
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mFolderScreen:I

    .line 243
    :cond_0
    const-string v0, "cellX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    const-string v0, "cellX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mFolderCellX:I

    .line 246
    :cond_1
    const-string v0, "cellY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 247
    const-string v0, "cellY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mFolderCellY:I

    .line 249
    :cond_2
    return-void
.end method

.method setPostPositionTag(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mIsPostPosition:Z

    .line 253
    return-void
.end method
