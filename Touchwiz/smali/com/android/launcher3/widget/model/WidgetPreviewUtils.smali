.class public Lcom/android/launcher3/widget/model/WidgetPreviewUtils;
.super Ljava/lang/Object;
.source "WidgetPreviewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/model/WidgetPreviewUtils$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetPreviewUtils"

.field private static final WIDGET_PREVIEW_ICON_PADDING_PERCENTAGE:F = 0.25f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private final mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 57
    .local v0, "apps":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 59
    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/widget/model/WidgetPreviewUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/widget/model/WidgetPreviewUtils$1;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;-><init>()V

    return-void
.end method

.method private generateShortcutPreview(Lcom/android/launcher3/Launcher;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 167
    iget-object v4, p0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/model/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->getMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 169
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    iget v1, v4, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    .line 170
    .local v1, "iconSize":I
    iget-object v4, p0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v1, v1}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 171
    .local v2, "preview":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/launcher3/theme/OpenThemeManager;->getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 172
    .local v3, "previewWithTrayIfNeeded":Landroid/graphics/Bitmap;
    return-object v3
.end method

.method public static getInstance()Lcom/android/launcher3/widget/model/WidgetPreviewUtils;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils$SingletonHolder;->access$100()Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    move-result-object v0

    return-object v0
.end method

.method private getMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generatePreview(Lcom/android/launcher3/Launcher;Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I

    .prologue
    .line 64
    instance-of v0, p2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 65
    check-cast p2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .end local p2    # "info":Ljava/lang/Object;
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->generateWidgetPreview(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .restart local p2    # "info":Ljava/lang/Object;
    :cond_0
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2    # "info":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->generateShortcutPreview(Lcom/android/launcher3/Launcher;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public generateWidgetPreview(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;
    .locals 27
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "info"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .param p3, "maxPreviewWidth"    # I
    .param p4, "preScaledWidthOut"    # [I

    .prologue
    .line 75
    if-gez p3, :cond_0

    .line 76
    const p3, 0x7fffffff

    .line 79
    :cond_0
    const/4 v12, 0x0

    .line 80
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->previewImage:I

    if-eqz v4, :cond_1

    .line 81
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 82
    if-eqz v12, :cond_5

    .line 83
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->getMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 90
    :cond_1
    :goto_0
    if-eqz v12, :cond_6

    const/16 v24, 0x1

    .line 91
    .local v24, "widgetPreviewExists":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanX()I

    move-result v22

    .line 92
    .local v22, "spanX":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanY()I

    move-result v23

    .line 97
    .local v23, "spanY":I
    if-eqz v24, :cond_7

    .line 98
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 99
    .local v6, "previewWidth":I
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 109
    .local v7, "previewHeight":I
    :goto_2
    const/high16 v20, 0x3f800000    # 1.0f

    .line 110
    .local v20, "scale":F
    if-eqz p4, :cond_2

    .line 111
    const/4 v4, 0x0

    aput v6, p4, v4

    .line 113
    :cond_2
    move/from16 v0, p3

    if-le v6, v0, :cond_3

    .line 114
    move/from16 v0, p3

    int-to-float v4, v0

    int-to-float v5, v6

    div-float v20, v4, v5

    .line 116
    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v20, v4

    if-eqz v4, :cond_4

    .line 117
    int-to-float v4, v6

    mul-float v4, v4, v20

    float-to-int v6, v4

    .line 118
    int-to-float v4, v7

    mul-float v4, v4, v20

    float-to-int v7, v4

    .line 122
    :cond_4
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10}, Landroid/graphics/Canvas;-><init>()V

    .line 123
    .local v10, "c":Landroid/graphics/Canvas;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 124
    .local v3, "preview":Landroid/graphics/Bitmap;
    invoke-virtual {v10, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v6

    div-int/lit8 v25, v4, 0x2

    .line 128
    .local v25, "x":I
    if-eqz v24, :cond_8

    .line 129
    const/4 v4, 0x0

    add-int v5, v25, v6

    move/from16 v0, v25

    invoke-virtual {v12, v0, v4, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    invoke-virtual {v12, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    :goto_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 162
    .local v17, "imageHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v4, v0, v3, v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getBadgeBitmap(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 85
    .end local v3    # "preview":Landroid/graphics/Bitmap;
    .end local v6    # "previewWidth":I
    .end local v7    # "previewHeight":I
    .end local v10    # "c":Landroid/graphics/Canvas;
    .end local v17    # "imageHeight":I
    .end local v20    # "scale":F
    .end local v22    # "spanX":I
    .end local v23    # "spanY":I
    .end local v24    # "widgetPreviewExists":Z
    .end local v25    # "x":I
    :cond_5
    const-string v4, "WidgetPreviewUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->previewImage:I

    .line 86
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " for provider: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 102
    .restart local v22    # "spanX":I
    .restart local v23    # "spanY":I
    .restart local v24    # "widgetPreviewExists":Z
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v11

    .line 103
    .local v11, "deviceProfile":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v4, v11, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    mul-int v6, v4, v22

    .line 104
    .restart local v6    # "previewWidth":I
    iget-object v4, v11, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    mul-int v7, v4, v23

    .restart local v7    # "previewHeight":I
    goto/16 :goto_2

    .line 132
    .end local v11    # "deviceProfile":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .restart local v3    # "preview":Landroid/graphics/Bitmap;
    .restart local v10    # "c":Landroid/graphics/Canvas;
    .restart local v20    # "scale":F
    .restart local v25    # "x":I
    :cond_8
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 133
    .local v19, "p":Landroid/graphics/Paint;
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    iget v9, v4, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    .line 136
    .local v9, "appIconSize":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02002c

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 137
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/util/BitmapUtils;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    .line 141
    int-to-float v4, v9

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v18, v0

    .line 142
    .local v18, "minOffset":I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 143
    .local v21, "smallestSide":I
    move/from16 v0, v21

    int-to-float v4, v0

    mul-int/lit8 v5, v18, 0x2

    add-int/2addr v5, v9

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, v20

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 146
    .local v16, "iconScale":F
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->loadIcon(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->getMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 147
    .local v15, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_9

    .line 148
    int-to-float v4, v6

    int-to-float v5, v9

    mul-float v5, v5, v16

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int v14, v4, v25

    .line 149
    .local v14, "hoffset":I
    int-to-float v4, v7

    int-to-float v5, v9

    mul-float v5, v5, v16

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v26, v0

    .line 150
    .local v26, "yoffset":I
    int-to-float v4, v9

    mul-float v4, v4, v16

    float-to-int v4, v4

    add-int/2addr v4, v14

    int-to-float v5, v9

    mul-float v5, v5, v16

    float-to-int v5, v5

    add-int v5, v5, v26

    move/from16 v0, v26

    invoke-virtual {v15, v14, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 153
    invoke-virtual {v15, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v14    # "hoffset":I
    .end local v15    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v26    # "yoffset":I
    :cond_9
    :goto_4
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 155
    :catch_0
    move-exception v13

    .line 156
    .local v13, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "WidgetPreviewUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resources.NotFoundExceptio:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
