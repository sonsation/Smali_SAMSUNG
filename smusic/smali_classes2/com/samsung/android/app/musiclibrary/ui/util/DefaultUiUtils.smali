.class public Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;
.super Ljava/lang/Object;
.source "DefaultUiUtils.java"


# static fields
.field private static final EXTERNAL_SDCARD_STORAGE_PATH:Ljava/lang/String;

.field public static final EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

.field public static final EXTERNAL_STORAGE_DIRECTORY_ABSOLUTE_PATH:Ljava/lang/String;

.field public static final EXTERNAL_STORAGE_DIRECTORY_PATH:Ljava/lang/String;

.field private static final HOVER_UI_DISABLED:I = 0x1

.field private static final HOVER_UI_ENABLED:I = 0x0

.field private static final UNICODE_LTR_MARK:Ljava/lang/String; = "\u200e"

.field protected static final sFormatBuilder:Ljava/lang/StringBuilder;

.field protected static final sFormatter:Ljava/util/Formatter;

.field private static sIsHoverUiEnabled:I

.field private static final sTimeArgs:[Ljava/lang/Object;

.field private static sTimeStringFormatLong:Ljava/lang/String;

.field private static sTimeStringFormatShort:Ljava/lang/String;

.field private static final sTimeStrings:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 67
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sFormatter:Ljava/util/Formatter;

    .line 76
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils$1;

    const/16 v1, 0x258

    const-string v2, "TimeStrings"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils$1;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sTimeStrings:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

    .line 113
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "storage/[:xdigit:]{4}-[:xdigit:]{4}"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->EXTERNAL_SDCARD_STORAGE_PATH:Ljava/lang/String;

    .line 126
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sIsHoverUiEnabled:I

    .line 132
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 135
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->EXTERNAL_STORAGE_DIRECTORY_ABSOLUTE_PATH:Ljava/lang/String;

    .line 139
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->EXTERNAL_STORAGE_DIRECTORY_PATH:Ljava/lang/String;

    .line 139
    return-void

    .line 122
    :cond_0
    const-string/jumbo v0, "storage/extSdCard"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sTimeStringFormatShort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 52
    sput-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sTimeStringFormatShort:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sTimeStringFormatLong:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 52
    sput-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sTimeStringFormatLong:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sTimeArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method public static cleanMakeTimeStringCache()V
    .locals 1

    .prologue
    .line 504
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sTimeStrings:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->clear()V

    .line 505
    return-void
.end method

.method public static convertAudioIdsToSelection(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p0, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 6
    .param p0, "column"    # Ljava/lang/String;
    .param p1, "ids"    # [J

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    const/4 v3, 0x0

    .line 197
    :goto_0
    return-object v3

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "audioIds":Ljava/lang/StringBuilder;
    const-string v3, " IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    array-length v2, p1

    .line 190
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 191
    if-eqz v1, :cond_1

    .line 192
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    :cond_1
    aget-wide v4, p1, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    :cond_2
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static createColorSelector(II)Landroid/content/res/ColorStateList;
    .locals 8
    .param p0, "selectColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "normalColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 442
    new-array v1, v7, [[I

    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v5

    new-array v2, v4, [I

    aput-object v2, v1, v6

    .line 444
    .local v1, "states":[[I
    new-array v0, v7, [I

    aput p0, v0, v4

    aput p0, v0, v5

    aput p1, v0, v6

    .line 445
    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public static createRippleDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rippleColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createRippleDrawable(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static createRippleDrawable(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/RippleDrawable;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rippleColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "content"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 429
    const/4 v2, 0x5

    new-array v1, v2, [[I

    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    aput-object v2, v1, v5

    new-array v2, v5, [I

    const v3, 0x10102fe

    aput v3, v2, v4

    aput-object v2, v1, v6

    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v7

    new-array v2, v4, [I

    aput-object v2, v1, v8

    .line 433
    .local v1, "states":[[I
    const/4 v2, 0x5

    new-array v0, v2, [I

    aput p1, v0, v4

    aput p1, v0, v5

    aput p1, v0, v6

    aput p1, v0, v7

    const v2, 0x106000d

    const/4 v3, 0x0

    .line 434
    invoke-static {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    aput v2, v0, v8

    .line 436
    .local v0, "colors":[I
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, 0x106000b

    const/4 v6, 0x0

    .line 437
    invoke-static {p0, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v2, v3, p2, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public static getActionBarView(Landroid/app/Activity;)Landroid/view/View;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 415
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 417
    .local v1, "resId":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public static getActionMenuView(Landroid/app/Activity;)Landroid/widget/ActionMenuView;
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, "actionMenuView":Landroid/widget/ActionMenuView;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 393
    .local v4, "res":Landroid/content/res/Resources;
    const-string v9, "action_bar_container"

    const-string v10, "id"

    const-string v11, "android"

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 394
    .local v5, "resId":I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 395
    .local v7, "v":Landroid/view/View;
    if-nez v7, :cond_0

    .line 396
    const/4 v9, 0x0

    .line 411
    :goto_0
    return-object v9

    .line 398
    :cond_0
    const-string v9, "action_context_bar"

    const-string v10, "id"

    const-string v11, "android"

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 399
    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, "actionContextBar":Landroid/view/View;
    if-eqz v0, :cond_1

    move-object v8, v0

    .line 401
    check-cast v8, Landroid/view/ViewGroup;

    .line 402
    .local v8, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 403
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 404
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 405
    .local v2, "child":Landroid/view/View;
    instance-of v9, v2, Landroid/widget/ActionMenuView;

    if-eqz v9, :cond_2

    move-object v1, v2

    .line 406
    check-cast v1, Landroid/widget/ActionMenuView;

    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "i":I
    .end local v6    # "size":I
    .end local v8    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    move-object v9, v1

    .line 411
    goto :goto_0

    .line 403
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v6    # "size":I
    .restart local v8    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getAirTextView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    :goto_0
    return-object v0

    .line 169
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$layout;->hover_music_popup_light_common:I

    .line 170
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    .line 171
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static getExternalStorageSdPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 342
    const-string/jumbo v4, "storage"

    .line 343
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 344
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/os/storage/StorageManagerCompat;->getStorageVolumes(Landroid/os/storage/StorageManager;)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 345
    .local v1, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-object v3

    .line 349
    :cond_1
    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 351
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    const-string/jumbo v6, "sd"

    invoke-static {v2}, Lcom/samsung/android/app/music/support/android/os/storage/StorageVolumeCompat;->getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 352
    invoke-static {v2}, Lcom/samsung/android/app/music/support/android/os/storage/StorageVolumeCompat;->isRemovable(Landroid/os/storage/StorageVolume;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "mounted"

    .line 353
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/support/android/os/storage/StorageVolumeCompat;->getState(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 354
    invoke-static {v2}, Lcom/samsung/android/app/music/support/android/os/storage/StorageVolumeCompat;->getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 349
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static getFolderDirectoryName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 312
    move-object v1, p1

    .line 313
    .local v1, "temp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 316
    .local v0, "end":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 317
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 321
    :cond_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->EXTERNAL_STORAGE_DIRECTORY_ABSOLUTE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->EXTERNAL_STORAGE_DIRECTORY_ABSOLUTE_PATH:Ljava/lang/String;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->my_device:I

    .line 323
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 322
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    .end local v0    # "end":I
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 325
    .restart local v0    # "end":I
    :cond_2
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->EXTERNAL_SDCARD_STORAGE_PATH:Ljava/lang/String;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->sd_card:I

    .line 326
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLastDirectoryName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 279
    if-nez p1, :cond_0

    move-object v0, p2

    .line 308
    .end local p2    # "folderName":Ljava/lang/String;
    .local v0, "folderName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 285
    .end local v0    # "folderName":Ljava/lang/String;
    .restart local p2    # "folderName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 286
    .local v2, "root":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v3, v4, v5

    .line 287
    .local v3, "slashCount":I
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->EXTERNAL_STORAGE_DIRECTORY_ABSOLUTE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 288
    const/4 v1, 0x1

    .line 289
    .local v1, "internalStorage":Z
    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 290
    const/4 v2, 0x1

    .line 301
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 302
    if-eqz v1, :cond_5

    .line 303
    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->my_device:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_2
    move-object v0, p2

    .line 308
    .end local p2    # "folderName":Ljava/lang/String;
    .restart local v0    # "folderName":Ljava/lang/String;
    goto :goto_0

    .line 292
    .end local v0    # "folderName":Ljava/lang/String;
    .end local v1    # "internalStorage":Z
    .restart local p2    # "folderName":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 293
    const/4 v1, 0x1

    .restart local v1    # "internalStorage":Z
    goto :goto_1

    .line 295
    .end local v1    # "internalStorage":Z
    :cond_4
    const/4 v1, 0x0

    .line 296
    .restart local v1    # "internalStorage":Z
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 297
    const/4 v2, 0x1

    goto :goto_1

    .line 305
    :cond_5
    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->sd_card:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2
.end method

.method public static getLimitedLargeFontSize(Landroid/content/res/Resources;IF)F
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "dimenId"    # I
    .param p2, "maxFontScale"    # F

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getLimitedLargeFontSize(Landroid/content/res/Resources;IFF)F

    move-result v0

    return v0
.end method

.method public static getLimitedLargeFontSize(Landroid/content/res/Resources;IFF)F
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "dimenId"    # I
    .param p2, "minFontScale"    # F
    .param p3, "maxFontScale"    # F

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 456
    .local v1, "density":F
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v1

    .line 457
    .local v0, "defaultTextSize":F
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 458
    .local v2, "fontScale":F
    cmpg-float v3, v2, p2

    if-gez v3, :cond_1

    .line 459
    move v2, p2

    .line 463
    :cond_0
    :goto_0
    mul-float v3, v0, v2

    return v3

    .line 460
    :cond_1
    cmpl-float v3, v2, p3

    if-lez v3, :cond_0

    .line 461
    move v2, p3

    goto :goto_0
.end method

.method public static getMyDeviceRootBucketId()I
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->EXTERNAL_STORAGE_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static getSdCardRootBucketId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 367
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getExternalStorageSdPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "sdCardPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 373
    .local v1, "sdcardRootBucketId":I
    :goto_0
    return v1

    .line 371
    .end local v1    # "sdcardRootBucketId":I
    :cond_0
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .restart local v1    # "sdcardRootBucketId":I
    goto :goto_0
.end method

.method public static getUiType(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$bool;->tablet_ui_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const/4 v0, 0x1

    .line 386
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoverUiEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sIsHoverUiEnabled:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 145
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->isHoveringUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sIsHoverUiEnabled:I

    .line 148
    :cond_0
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sIsHoverUiEnabled:I

    if-nez v0, :cond_2

    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 145
    goto :goto_0

    :cond_2
    move v2, v1

    .line 148
    goto :goto_1
.end method

.method public static isLandscape(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "landscape":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 491
    const/4 v0, 0x1

    .line 493
    :cond_0
    return v0
.end method

.method public static isLocalContents(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 472
    if-eqz p0, :cond_0

    .line 473
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->EXTERNAL_STORAGE_DIRECTORY_ABSOLUTE_PATH:Ljava/lang/String;

    .line 475
    .local v1, "storage":Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 480
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "storage":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isOwnerUser()Z
    .locals 2

    .prologue
    .line 508
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->getCurrentUser()I

    move-result v0

    sget v1, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->USER_OWNER:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPortrait(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 484
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numalbums"    # I
    .param p2, "numsongs"    # I
    .param p3, "isUnknown"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v2, "songs_albums":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 236
    .local v1, "r":Landroid/content/res/Resources;
    if-nez p3, :cond_0

    .line 237
    sget v3, Lcom/samsung/android/app/musiclibrary/R$plurals;->NNNalbum:I

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "f":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 239
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sFormatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 240
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    .end local v0    # "f":Ljava/lang/String;
    :cond_0
    sget v3, Lcom/samsung/android/app/musiclibrary/R$plurals;->NNNtrack:I

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 244
    .restart local v0    # "f":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 245
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sFormatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 246
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secs"    # J

    .prologue
    .line 497
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sTimeStrings:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

    long-to-int v1, p1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->getValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAirView(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 159
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->TOP_ABOVE:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    or-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;I)V

    .line 162
    :cond_0
    return-void
.end method

.method public static setHoverContent(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "stringId"    # I

    .prologue
    .line 152
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->TOP_ABOVE:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    or-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;I)V

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    return-void
.end method

.method public static setMaxSearchLength(Landroid/content/Context;Landroid/widget/SearchView;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x100

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "android:id/search_src_text"

    .line 254
    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 252
    invoke-virtual {p1, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 255
    .local v0, "searchTextView":Landroid/widget/EditText;
    if-eqz v0, :cond_1

    .line 256
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_BIXBY:Z

    if-nez v2, :cond_0

    .line 257
    const-string v2, "nm"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 259
    :cond_0
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->max_char_reached_msg:I

    new-array v3, v6, [Ljava/lang/Object;

    .line 261
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 260
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 263
    .local v1, "toast":Landroid/widget/Toast;
    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils$2;

    invoke-direct {v3, v7, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils$2;-><init>(ILandroid/widget/Toast;)V

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 276
    .end local v1    # "toast":Landroid/widget/Toast;
    :cond_1
    return-void
.end method

.method public static setViewEnabled(Landroid/view/View;Z)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x2

    .line 512
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 517
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 518
    return-void

    .line 517
    :cond_1
    const v0, 0x3ebd70a4    # 0.37f

    goto :goto_0
.end method

.method public static transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 208
    if-eqz p1, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->unknown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 211
    :cond_1
    return-object p1
.end method

.method public static transUnknownString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "unknownStringId"    # I

    .prologue
    .line 215
    if-eqz p1, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 218
    :cond_1
    return-object p1
.end method
