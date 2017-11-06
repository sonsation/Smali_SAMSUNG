.class public final Lcom/samsung/android/app/music/common/util/UiUtils;
.super Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;
.source "UiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/util/UiUtils$ForegroundCheckTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sGetCaptionHeightMethod:Ljava/lang/reflect/Method;

.field private static final sRateArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/samsung/android/app/music/common/util/UiUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/UiUtils;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/samsung/android/app/music/common/util/UiUtils;->sRateArgs:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;-><init>()V

    .line 57
    return-void
.end method

.method public static applyTintToDrawable([Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p0, "drawables"    # [Landroid/graphics/drawable/Drawable;
    .param p1, "tintColor"    # I

    .prologue
    .line 307
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 308
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 307
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public static getActionBarHeight(Landroid/app/Activity;)I
    .locals 5
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 341
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 342
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 343
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 344
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 345
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2
.end method

.method public static getActionBarView(Landroid/app/Activity;)Landroid/view/View;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 365
    if-nez p0, :cond_0

    .line 366
    const/4 v2, 0x0

    .line 370
    :goto_0
    return-object v2

    .line 368
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 369
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_container"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 370
    .local v1, "resId":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCaptionHeight(Landroid/app/Activity;)I
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    sget-object v2, Lcom/samsung/android/app/music/common/util/UiUtils;->sGetCaptionHeightMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 352
    const-string v2, "com.android.internal.policy.DecorView"

    const-string v3, "getCaptionHeight"

    new-array v4, v1, [Ljava/lang/Class;

    .line 353
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/music/common/util/UiUtils;->sGetCaptionHeightMethod:Ljava/lang/reflect/Method;

    .line 355
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/common/util/UiUtils;->sGetCaptionHeightMethod:Ljava/lang/reflect/Method;

    .line 356
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 357
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 358
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 361
    :cond_1
    return v1
.end method

.method public static getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p0, "color"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 217
    new-array v1, v4, [[I

    new-array v2, v3, [I

    aput-object v2, v1, v3

    .line 218
    .local v1, "states":[[I
    new-array v0, v4, [I

    aput p0, v0, v3

    .line 219
    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public static getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "targetPath"    # Ljava/lang/String;

    .prologue
    .line 70
    if-nez p0, :cond_1

    .line 71
    const/4 p0, 0x0

    .line 77
    .end local p0    # "targetPath":Ljava/lang/String;
    .local v0, "pathToken":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 73
    .end local v0    # "pathToken":[Ljava/lang/String;
    .restart local p0    # "targetPath":Ljava/lang/String;
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0    # "pathToken":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 75
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, v0, v1

    goto :goto_0
.end method

.method public static getScrubbingRateString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "highRate"    # I
    .param p2, "rate"    # I

    .prologue
    const/4 v3, 0x0

    .line 154
    const v2, 0x7f0a04b8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "scrubRateFormat":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/app/music/common/util/UiUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 157
    sget-object v0, Lcom/samsung/android/app/music/common/util/UiUtils;->sRateArgs:[Ljava/lang/Object;

    .line 158
    .local v0, "scrubArgs":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    .line 159
    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 161
    sget-object v2, Lcom/samsung/android/app/music/common/util/UiUtils;->sFormatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 378
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 379
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 380
    .local v1, "resId":I
    if-lez v1, :cond_0

    .line 381
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 383
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 165
    if-nez p1, :cond_1

    .line 166
    const-string v8, ""

    .line 185
    :cond_0
    :goto_0
    return-object v8

    .line 169
    :cond_1
    const-string v8, ""

    .line 170
    .local v8, "title":Ljava/lang/String;
    const/4 v6, 0x0

    .line 172
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 175
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 180
    :cond_2
    if-eqz v6, :cond_0

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 177
    :catch_0
    move-exception v7

    .line 178
    .local v7, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    if-eqz v6, :cond_0

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 180
    .end local v7    # "e":Ljava/lang/UnsupportedOperationException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    const/4 v1, 0x0

    .line 196
    :goto_0
    return-object v1

    .line 195
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "title"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->getTitle(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTopSystemUiHeight(Landroid/app/Activity;)I
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 337
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getActionBarHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getCaptionHeight(Landroid/app/Activity;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static hasKeyboardCover(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/content/res/ConfigurationCompat;->hasMobileKeyboard(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public static isActivatedSmallScreenUi(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 240
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceSmallDensity(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const v2, 0x7f10000e

    .line 225
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEllipsis(Landroid/widget/TextView;)Z
    .locals 5
    .param p0, "v"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    if-nez p0, :cond_0

    .line 213
    :goto_0
    return v2

    .line 208
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v4

    sub-int/2addr v3, v4

    .line 209
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v4

    sub-int v0, v3, v4

    .line 211
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 212
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 213
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_2

    :cond_1
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public static isHangul(Ljava/lang/String;)Z
    .locals 4
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 387
    const-string v2, ".*[\u3131-\u314e\u314f-\u3163\uac00-\ud7a3]+.*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 388
    .local v0, "hangul":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 390
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    const-string v2, "Utils"

    const-string v3, "isHangul : return true"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v2, 0x1

    .line 395
    :goto_0
    return v2

    .line 394
    :cond_0
    const-string v2, "Utils"

    const-string v3, "isHangul : return false"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isInLockTaskMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 298
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 299
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    return v1
.end method

.method public static isInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInteractive(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 150
    .local v0, "pm":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLockScreenOn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 138
    .local v0, "km":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMusicUiTop(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 91
    .local v2, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 104
    .local v1, "isTop":Z
    :goto_0
    sget-object v3, Lcom/samsung/android/app/music/common/util/UiUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMusicUiTop() isTop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return v1

    .line 95
    .end local v1    # "isTop":Z
    :cond_0
    :try_start_0
    new-instance v3, Lcom/samsung/android/app/music/common/util/UiUtils$ForegroundCheckTask;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/android/app/music/common/util/UiUtils$ForegroundCheckTask;-><init>(Lcom/samsung/android/app/music/common/util/UiUtils$1;)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/Context;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/util/UiUtils$ForegroundCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .restart local v1    # "isTop":Z
    goto :goto_0

    .line 96
    .end local v1    # "isTop":Z
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    .line 98
    .restart local v1    # "isTop":Z
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "isTop":Z
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const/4 v1, 0x0

    .line 101
    .restart local v1    # "isTop":Z
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPointInView(Landroid/view/View;FF)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 287
    if-nez p0, :cond_0

    .line 294
    :goto_0
    return v2

    .line 291
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 292
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 293
    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    aget v3, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    aget v3, v0, v1

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static isShowingStatusBar(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 374
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmallScreenUiEnabled(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isUPSMMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 315
    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->ULTRA_POWERSAVING_MODE:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isVolumeDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p0, "keyCode"    # I
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "down":Z
    const/16 v1, 0x19

    if-ne p0, v1, :cond_1

    .line 274
    const/4 v0, 0x1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    const/16 v1, 0xa9

    if-ne p0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    const/16 v2, 0x222

    if-ne v1, v2, :cond_0

    .line 277
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVolumeMute(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 283
    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVolumeUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p0, "keyCode"    # I
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "up":Z
    const/16 v1, 0x18

    if-ne p0, v1, :cond_1

    .line 263
    const/4 v0, 0x1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    const/16 v1, 0xa8

    if-ne p0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    const/16 v2, 0x221

    if-ne v1, v2, :cond_0

    .line 266
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setNextForcusForward(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p0, "currentView"    # Landroid/view/View;
    .param p1, "nextFocusForwardView"    # Landroid/view/View;

    .prologue
    .line 245
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 246
    new-instance v0, Lcom/samsung/android/app/music/common/util/UiUtils$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/common/util/UiUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 258
    :cond_0
    return-void
.end method
