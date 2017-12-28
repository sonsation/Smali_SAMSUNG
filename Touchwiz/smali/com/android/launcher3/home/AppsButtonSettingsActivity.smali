.class public Lcom/android/launcher3/home/AppsButtonSettingsActivity;
.super Landroid/app/Activity;
.source "AppsButtonSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final ACTION_CHANGE_APPS_BUTTON_BIXBY:Ljava/lang/String; = "showApps"

.field public static final EXTRA_SHOW_APPS:Ljava/lang/String; = "showApps"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplyButton:Landroid/widget/TextView;

.field private mAppsIcon:Landroid/widget/ImageView;

.field private mEnabledAppsButton:Z

.field private mHelpText:Landroid/widget/TextView;

.field private mHideAppsRadio:Landroid/widget/RadioButton;

.field private mLastIcon:Landroid/widget/ImageView;

.field private mPreview:Landroid/widget/LinearLayout;

.field private mShowAppsRadio:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addIconsToPreview(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "iconDrawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v6, -0x2

    .line 204
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 206
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 207
    .local v1, "icon":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 209
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 210
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v5, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 213
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getAllAppsIcon()V

    .line 214
    iget-boolean v4, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mEnabledAppsButton:Z

    if-eqz v4, :cond_2

    .line 215
    iget-object v4, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mAppsIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    :cond_1
    :goto_1
    return-void

    .line 217
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    .line 218
    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v2

    .line 219
    .local v2, "maxCount":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 220
    iget-object v4, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mLastIcon:Landroid/widget/ImageView;

    .line 221
    iget-object v4, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mHelpText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private drawFolderPreview(Ljava/util/ArrayList;I)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "drawables"    # Ljava/util/ArrayList;
    .param p2, "folderColor"    # I

    .prologue
    .line 371
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-object/from16 v20, v0

    .line 372
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v10

    .line 374
    .local v10, "iconSize":I
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v8

    .line 375
    .local v8, "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    if-eqz v8, :cond_0

    .line 376
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v10, v10, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 382
    .local v7, "folderIcon":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 384
    .local v17, "previewCanvas":Landroid/graphics/Canvas;
    const/4 v13, 0x3

    .line 385
    .local v13, "miniIconCol":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0137

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 386
    .local v14, "miniIconGap":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0138

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 387
    .local v18, "previewPadding":I
    mul-int/lit8 v20, v18, 0x2

    sub-int v3, v10, v20

    .line 388
    .local v3, "availableSpaceInPreview":I
    mul-int/lit8 v20, v14, 0x2

    sub-int v20, v3, v20

    div-int v5, v20, v13

    .line 390
    .local v5, "baselineIconSize":I
    int-to-float v0, v5

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    div-float v4, v20, v21

    .line 394
    .local v4, "baselineIconScale":F
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 397
    .local v12, "mOldBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v9, v20, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_2

    .line 398
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 399
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    sget-boolean v20, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v20, :cond_1

    rem-int v20, v9, v13

    rsub-int/lit8 v15, v20, 0x2

    .line 400
    .local v15, "posX":I
    :goto_2
    div-int v16, v9, v13

    .line 401
    .local v16, "posY":I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->save()I

    .line 402
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 403
    add-int v20, v5, v14

    mul-int v20, v20, v15

    add-int v11, v20, v18

    .line 404
    .local v11, "l":I
    add-int v20, v5, v14

    mul-int v20, v20, v16

    add-int v19, v20, v18

    .line 405
    .local v19, "t":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v4

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v20, v20, v11

    .line 406
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v4

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v19

    .line 405
    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v11, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 407
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 408
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 409
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->restore()V

    .line 397
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 379
    .end local v3    # "availableSpaceInPreview":I
    .end local v4    # "baselineIconScale":F
    .end local v5    # "baselineIconSize":I
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "folderIcon":Landroid/graphics/Bitmap;
    .end local v9    # "i":I
    .end local v11    # "l":I
    .end local v12    # "mOldBounds":Landroid/graphics/Rect;
    .end local v13    # "miniIconCol":I
    .end local v14    # "miniIconGap":I
    .end local v15    # "posX":I
    .end local v16    # "posY":I
    .end local v17    # "previewCanvas":Landroid/graphics/Canvas;
    .end local v18    # "previewPadding":I
    .end local v19    # "t":I
    :cond_0
    const v20, 0x7f030001

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v10, v10}, Lcom/android/launcher3/util/BitmapUtils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7    # "folderIcon":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 399
    .restart local v3    # "availableSpaceInPreview":I
    .restart local v4    # "baselineIconScale":F
    .restart local v5    # "baselineIconSize":I
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "i":I
    .restart local v12    # "mOldBounds":Landroid/graphics/Rect;
    .restart local v13    # "miniIconCol":I
    .restart local v14    # "miniIconGap":I
    .restart local v17    # "previewCanvas":Landroid/graphics/Canvas;
    .restart local v18    # "previewPadding":I
    :cond_1
    rem-int v15, v9, v13

    goto :goto_2

    .line 411
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v7
.end method

.method private getAllAppsIcon()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    .line 415
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mAppsIcon:Landroid/widget/ImageView;

    .line 417
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 419
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 420
    iget-object v7, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mAppsIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v6

    .line 422
    .local v6, "themeManager":Lcom/android/launcher3/theme/OpenThemeManager;
    sget-object v7, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->ALL_APPS_ICON:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/theme/OpenThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 423
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00ff

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 424
    .local v5, "size":I
    invoke-static {v2, v5, v5}, Lcom/android/launcher3/util/BitmapUtils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 425
    .local v0, "appsButtonBitmap":Landroid/graphics/Bitmap;
    sget-object v7, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->ALL_APPS_ICON:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    .line 426
    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v7

    const-string v8, "drawable"

    .line 425
    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->isFromThemeResources(ILjava/lang/String;)Z

    move-result v3

    .line 427
    .local v3, "isThemeAppIcon":Z
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v7

    invoke-virtual {v7, v0, v5, v3}, Lcom/android/launcher3/theme/OpenThemeManager;->getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 429
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mAppsIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 430
    return-void
.end method

.method private getHotseatFolderIconFromDb(JI)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "folderId"    # J
    .param p3, "folderColor"    # I

    .prologue
    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rank"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "< 9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "where":Ljava/lang/String;
    const-string v7, "rank"

    .line 286
    .local v7, "sortOrder":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "intent"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "icon"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "itemType"

    aput-object v3, v4, v2

    .line 290
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 292
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v12, "folderItemDawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 294
    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v14

    .line 295
    .local v14, "iconSize":I
    if-eqz v9, :cond_1

    .line 296
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v13

    .line 297
    .local v13, "iconCache":Lcom/android/launcher3/common/model/IconCache;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v15

    .line 300
    .local v15, "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v15}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getIconBitmap(Landroid/database/Cursor;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 303
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    .line 304
    invoke-static {v8, v14, v14, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v10, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 305
    .local v10, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 306
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v11

    .line 313
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 316
    .end local v13    # "iconCache":Lcom/android/launcher3/common/model/IconCache;
    .end local v15    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->drawFolderPreview(Ljava/util/ArrayList;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 310
    .restart local v13    # "iconCache":Lcom/android/launcher3/common/model/IconCache;
    .restart local v15    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :catch_1
    move-exception v11

    .line 311
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private getHotseatIconFromDb()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v14, "iconDrawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "intent"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "icon"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "itemType"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "color"

    aput-object v3, v4, v2

    .line 234
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "container=-101"

    .line 236
    .local v5, "where":Ljava/lang/String;
    const-string v7, "screen"

    .line 237
    .local v7, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 239
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 241
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v13

    .line 242
    .local v13, "iconCache":Lcom/android/launcher3/common/model/IconCache;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v19

    .line 243
    .local v19, "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00ff

    .line 244
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 245
    .local v20, "previewIconSize":I
    const-string v2, "intent"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 246
    .local v17, "intentIndex":I
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 249
    .local v16, "idIndex":I
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    :try_start_1
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 252
    .local v18, "intentString":Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 255
    .local v15, "id":Ljava/lang/Long;
    if-nez v18, :cond_2

    .line 256
    const-string v2, "color"

    .line 257
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 258
    .local v9, "colorIndex":I
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getHotseatFolderIconFromDb(JI)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 263
    .end local v9    # "colorIndex":I
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v8, :cond_0

    .line 264
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    move/from16 v0, v20

    move/from16 v1, v20

    invoke-static {v8, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v11, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 266
    .local v11, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 268
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "d":Landroid/graphics/drawable/Drawable;
    .end local v15    # "id":Ljava/lang/Long;
    .end local v18    # "intentString":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 276
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 279
    .end local v13    # "iconCache":Lcom/android/launcher3/common/model/IconCache;
    .end local v14    # "iconDrawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    .end local v16    # "idIndex":I
    .end local v17    # "intentIndex":I
    .end local v19    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v20    # "previewIconSize":I
    :goto_2
    return-object v14

    .line 260
    .restart local v13    # "iconCache":Lcom/android/launcher3/common/model/IconCache;
    .restart local v14    # "iconDrawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    .restart local v15    # "id":Ljava/lang/Long;
    .restart local v16    # "idIndex":I
    .restart local v17    # "intentIndex":I
    .restart local v18    # "intentString":Ljava/lang/String;
    .restart local v19    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .restart local v20    # "previewIconSize":I
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v10, v13, v1}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getIconBitmap(Landroid/database/Cursor;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 273
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "iconCache":Lcom/android/launcher3/common/model/IconCache;
    .end local v15    # "id":Ljava/lang/Long;
    .end local v16    # "idIndex":I
    .end local v17    # "intentIndex":I
    .end local v18    # "intentString":Ljava/lang/String;
    .end local v19    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v20    # "previewIconSize":I
    :catch_1
    move-exception v12

    .line 274
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 279
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 276
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private getIconBitmap(Landroid/database/Cursor;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p3, "myUserHandle"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 321
    const/4 v2, 0x0

    .line 323
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    const-string v12, "intent"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 324
    .local v6, "intentIndex":I
    const-string v12, "icon"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 325
    .local v4, "iconIndex":I
    const-string v12, "itemType"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 326
    .local v11, "typeIndex":I
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 327
    .local v10, "type":I
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 328
    .local v7, "intentString":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-static {v7, v12}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 329
    .local v5, "intent":Landroid/content/Intent;
    const/4 v12, 0x1

    if-ne v10, v12, :cond_5

    .line 330
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 331
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.sec.launcher.action.SHOW_APPS_VIEW"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 332
    const/4 v12, 0x0

    .line 367
    .end local v4    # "iconIndex":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "intentIndex":I
    .end local v7    # "intentString":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v11    # "typeIndex":I
    :goto_0
    return-object v12

    .line 334
    .restart local v4    # "iconIndex":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "intentIndex":I
    .restart local v7    # "intentString":Ljava/lang/String;
    .restart local v10    # "type":I
    .restart local v11    # "typeIndex":I
    :cond_0
    move-object/from16 v0, p1

    invoke-static {v0, v4, p0}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 335
    if-nez v2, :cond_3

    .line 336
    invoke-virtual/range {p2 .. p3}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 351
    :goto_1
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 352
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 353
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 354
    .local v8, "packageName":Ljava/lang/String;
    :goto_2
    invoke-static {v8}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 355
    move-object/from16 v0, p3

    invoke-static {p0, v8, v0}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 357
    :cond_1
    invoke-static {v5}, Lcom/android/launcher3/common/view/LiveIconManager;->isKnoxLiveIcon(Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 358
    const-string v12, "liveicon_cmpname"

    .line 359
    invoke-virtual {v5, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "/"

    .line 360
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v9, v12, v13

    .line 361
    .local v9, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-static {p0, v9, v0}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v2

    .end local v4    # "iconIndex":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "intentIndex":I
    .end local v7    # "intentString":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v11    # "typeIndex":I
    :cond_2
    :goto_3
    move-object v12, v2

    .line 367
    goto :goto_0

    .line 338
    .restart local v4    # "iconIndex":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "intentIndex":I
    .restart local v7    # "intentString":Ljava/lang/String;
    .restart local v10    # "type":I
    .restart local v11    # "typeIndex":I
    :cond_3
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-static {p0, v2, v12}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 339
    invoke-static {p0}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 340
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 341
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 342
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    .line 341
    invoke-static {p0, v2, v12, v13}, Lcom/android/launcher3/util/DualAppUtils;->makeUserBadgedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 344
    :cond_4
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v12

    .line 345
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    const/4 v14, 0x0

    .line 344
    invoke-virtual {v12, v2, v13, v14}, Lcom/android/launcher3/theme/OpenThemeManager;->getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 348
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher3/common/model/IconCache;->getIcon(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 353
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 364
    .end local v4    # "iconIndex":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "intentIndex":I
    .end local v7    # "intentString":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v11    # "typeIndex":I
    :catch_0
    move-exception v3

    .line 365
    .local v3, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private initActionBar()V
    .locals 9

    .prologue
    const v8, 0x7f110072

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    .line 158
    .local v5, "mActionBar":Landroid/app/ActionBar;
    if-eqz v5, :cond_0

    .line 159
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 160
    const v6, 0x7f040024

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 161
    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f110073

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mApplyButton:Landroid/widget/TextView;

    .line 164
    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 166
    .local v1, "cancleButton":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "buttonString":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mApplyButton:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mApplyButton:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v6, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mApplyButton:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v6, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mApplyButton:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 172
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 173
    const v6, 0x7f110071

    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 174
    .local v2, "headerBar":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02006c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 177
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v4

    .line 178
    .local v4, "isEnableBtnBg":Z
    if-eqz v4, :cond_0

    .line 179
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 180
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f020108

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "buttonString":Ljava/lang/String;
    .end local v1    # "cancleButton":Landroid/widget/TextView;
    .end local v2    # "headerBar":Landroid/widget/LinearLayout;
    .end local v3    # "index":I
    .end local v4    # "isEnableBtnBg":Z
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 142
    const v0, 0x7f110033

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    .line 143
    const v0, 0x7f110034

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mHelpText:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f110030

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mShowAppsRadio:Landroid/widget/RadioButton;

    .line 145
    const v0, 0x7f110032

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mHideAppsRadio:Landroid/widget/RadioButton;

    .line 146
    iget-boolean v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mEnabledAppsButton:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mShowAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 151
    :goto_0
    const v0, 0x7f11002f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f110031

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mShowAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mHideAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private preformOnClick(Z)V
    .locals 4
    .param p1, "showApps"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mShowAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 136
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0901a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090194

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090150

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updatePreview(Z)V
    .locals 2
    .param p1, "isShowAppsChecked"    # Z

    .prologue
    .line 188
    if-eqz p1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mApplyButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mEnabledAppsButton:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mLastIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mLastIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mAppsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    :cond_1
    :goto_1
    return-void

    .line 189
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mApplyButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mEnabledAppsButton:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mAppsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mLastIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mLastIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public changeAppsButtonEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 433
    iget-boolean v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mEnabledAppsButton:Z

    if-ne v1, p1, :cond_0

    .line 448
    :goto_0
    return-void

    .line 436
    :cond_0
    sget-object v1, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppsButtonEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 438
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/model/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "set_boolean_setting"

    const-string v4, "pref_apps_button_setting"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 442
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    .line 443
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901a9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f09010d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    const-string v1, "1"

    .line 442
    :goto_1
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    .line 447
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901c8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 446
    :goto_2
    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    goto :goto_0

    .line 444
    :cond_1
    const-string v1, "2"

    goto :goto_1

    .line 447
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mHideAppsRadio:Landroid/widget/RadioButton;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 131
    invoke-direct {p0, p2}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->updatePreview(Z)V

    .line 132
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 110
    :sswitch_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090126

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->finish()V

    goto :goto_0

    .line 116
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mEnabledAppsButton:Z

    if-nez v2, :cond_0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->changeAppsButtonEnabled(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->finish()V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 116
    goto :goto_1

    .line 120
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->preformOnClick(Z)V

    goto :goto_0

    .line 123
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->preformOnClick(Z)V

    goto :goto_0

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x7f11002f -> :sswitch_2
        0x7f110031 -> :sswitch_3
        0x7f110072 -> :sswitch_0
        0x7f110073 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    sget-object v0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->setRequestedOrientation(I)V

    .line 91
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mEnabledAppsButton:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showApps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showApps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->changeAppsButtonEnabled(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->finish()V

    .line 98
    :cond_0
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->setContentView(I)V

    .line 99
    invoke-direct {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->initViews()V

    .line 100
    invoke-direct {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->initActionBar()V

    .line 101
    invoke-direct {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getHotseatIconFromDb()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->addIconsToPreview(Ljava/util/ArrayList;)V

    .line 103
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonSettingsActivity(Lcom/android/launcher3/home/AppsButtonSettingsActivity;)V

    .line 104
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
