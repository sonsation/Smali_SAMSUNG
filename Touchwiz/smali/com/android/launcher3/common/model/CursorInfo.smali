.class public Lcom/android/launcher3/common/model/CursorInfo;
.super Ljava/lang/Object;
.source "CursorInfo.java"


# instance fields
.field public final appWidgetIdIndex:I

.field public final appWidgetProviderIndex:I

.field public final cellXIndex:I

.field public final cellYIndex:I

.field public final colorIndex:I

.field public final containerIndex:I

.field public final festivalIndex:I

.field public final hiddenIndex:I

.field public final iconIndex:I

.field public final iconPackageIndex:I

.field public final iconResourceIndex:I

.field public final iconTypeIndex:I

.field public final idIndex:I

.field public final intentIndex:I

.field public final itemTypeIndex:I

.field public final lockIndex:I

.field public final newCueIndex:I

.field public final optionsIndex:I

.field public final profileIdIndex:I

.field public final rankIndex:I

.field public final restoredIndex:I

.field public final screenIndex:I

.field public final spanXIndex:I

.field public final spanYIndex:I

.field public final titleIndex:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    .line 61
    const-string v0, "intent"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    .line 62
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    .line 63
    const-string v0, "container"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    .line 64
    const-string v0, "itemType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    .line 65
    const-string v0, "appWidgetId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->appWidgetIdIndex:I

    .line 66
    const-string v0, "appWidgetProvider"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->appWidgetProviderIndex:I

    .line 67
    const-string v0, "screen"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    .line 68
    const-string v0, "cellX"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    .line 69
    const-string v0, "cellY"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    .line 70
    const-string v0, "spanX"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->spanXIndex:I

    .line 71
    const-string v0, "spanY"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->spanYIndex:I

    .line 72
    const-string v0, "rank"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    .line 73
    const-string v0, "restored"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    .line 74
    const-string v0, "profileId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->profileIdIndex:I

    .line 75
    const-string v0, "options"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->optionsIndex:I

    .line 76
    const-string v0, "iconType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconTypeIndex:I

    .line 77
    const-string v0, "icon"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    .line 78
    const-string v0, "iconPackage"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconPackageIndex:I

    .line 79
    const-string v0, "iconResource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconResourceIndex:I

    .line 80
    const-string v0, "color"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->colorIndex:I

    .line 81
    const-string v0, "hidden"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    .line 82
    const-string v0, "newCue"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->newCueIndex:I

    .line 83
    const-string v0, "festival"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->festivalIndex:I

    .line 84
    const-string v0, "lock"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->lockIndex:I

    .line 85
    return-void
.end method


# virtual methods
.method public loadIcon(Landroid/database/Cursor;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "icon":Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconTypeIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 90
    .local v1, "iconType":I
    if-nez v1, :cond_3

    .line 91
    iget v4, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconPackageIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "packageName":Ljava/lang/String;
    iget v4, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconResourceIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "resourceName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 94
    :cond_0
    new-instance v4, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v4}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 95
    iget-object v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v2, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 96
    iget-object v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v3, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 97
    invoke-static {v2, v3, p3}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    :cond_1
    if-nez v0, :cond_2

    .line 101
    iget v4, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    invoke-static {p1, v4, p3}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "resourceName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0

    .line 103
    :cond_3
    if-ne v1, v4, :cond_2

    .line 104
    iget v5, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    invoke-static {p1, v5, p3}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_4

    :goto_1
    iput-boolean v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method
