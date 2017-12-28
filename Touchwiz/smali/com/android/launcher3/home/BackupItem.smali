.class Lcom/android/launcher3/home/BackupItem;
.super Ljava/lang/Object;
.source "BackupItem.java"


# instance fields
.field protected mCellX:I

.field protected mCellY:I

.field protected mItem:Lcom/android/launcher3/common/base/item/ItemInfo;

.field protected mScreen:J

.field protected mSpanX:I

.field protected mSpanY:I

.field protected mView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/android/launcher3/home/BackupItem;->mCellX:I

    .line 25
    iput v0, p0, Lcom/android/launcher3/home/BackupItem;->mCellY:I

    .line 26
    iput v1, p0, Lcom/android/launcher3/home/BackupItem;->mSpanX:I

    .line 27
    iput v1, p0, Lcom/android/launcher3/home/BackupItem;->mSpanY:I

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/home/BackupItem;->mScreen:J

    .line 29
    iput-object v2, p0, Lcom/android/launcher3/home/BackupItem;->mItem:Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 30
    iput-object v2, p0, Lcom/android/launcher3/home/BackupItem;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method getCellX()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/launcher3/home/BackupItem;->mCellX:I

    return v0
.end method

.method getCellY()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/launcher3/home/BackupItem;->mCellY:I

    return v0
.end method

.method getItem()Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/launcher3/home/BackupItem;->mItem:Lcom/android/launcher3/common/base/item/ItemInfo;

    return-object v0
.end method

.method getScreen()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/android/launcher3/home/BackupItem;->mScreen:J

    return-wide v0
.end method

.method getSpanX()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/launcher3/home/BackupItem;->mSpanX:I

    return v0
.end method

.method getSpanY()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/launcher3/home/BackupItem;->mSpanY:I

    return v0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher3/home/BackupItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method setItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    move-object v0, p1

    .line 35
    .local v0, "homeItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v1, p0, Lcom/android/launcher3/home/BackupItem;->mCellX:I

    .line 36
    iget v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v1, p0, Lcom/android/launcher3/home/BackupItem;->mCellY:I

    .line 37
    iget v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iput v1, p0, Lcom/android/launcher3/home/BackupItem;->mSpanX:I

    .line 38
    iget v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iput v1, p0, Lcom/android/launcher3/home/BackupItem;->mSpanY:I

    .line 39
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v2, p0, Lcom/android/launcher3/home/BackupItem;->mScreen:J

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/home/BackupItem;->mItem:Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 42
    .end local v0    # "homeItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/home/BackupItem;->mView:Landroid/view/View;

    .line 48
    :cond_0
    return-void
.end method
