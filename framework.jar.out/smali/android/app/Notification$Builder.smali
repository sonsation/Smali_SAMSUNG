.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field private static mShowActionBg:Z


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mColorUtilInited:Z

.field private mContext:Landroid/content/Context;

.field private mHasHeaderText:Z

.field private mN:Landroid/app/Notification;

.field private mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStyle:Landroid/app/Notification$Style;

.field private mUserExtras:Landroid/os/Bundle;


# direct methods
.method static synthetic -get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/Notification$Builder;IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "layoutId"    # I
    .param p2, "hasProgress"    # Z
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "text"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "layoutId"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Landroid/app/Notification$Builder;IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "text"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2341
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/Notification$Builder;->mShowActionBg:Z

    .line 2317
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2375
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 2374
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toAdopt"    # Landroid/app/Notification;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2338
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 2340
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 2342
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 2344
    iput-boolean v7, p0, Landroid/app/Notification$Builder;->mColorUtilInited:Z

    .line 2346
    iput-boolean v7, p0, Landroid/app/Notification$Builder;->mHasHeaderText:Z

    .line 2352
    iput v8, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    .line 2353
    iput v8, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    .line 2382
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 2384
    if-nez p2, :cond_2

    .line 2385
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2386
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_0

    .line 2387
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.showWhen"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2389
    :cond_0
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v7, v5, Landroid/app/Notification;->priority:I

    .line 2390
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v7, v5, Landroid/app/Notification;->visibility:I

    .line 2381
    :cond_1
    :goto_0
    return-void

    .line 2392
    :cond_2
    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2393
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v5, :cond_3

    .line 2394
    iget-object v5, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2397
    :cond_3
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.people"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2398
    iget-object v5, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v7, "android.people"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2401
    :cond_4
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v5}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    if-eqz v5, :cond_5

    .line 2402
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2405
    :cond_5
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v5}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_6

    .line 2406
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 2409
    :cond_6
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.template"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2410
    .local v4, "templateClass":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2412
    invoke-static {v4}, Landroid/app/Notification$Builder;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2413
    .local v2, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    if-nez v2, :cond_7

    .line 2414
    const-string/jumbo v5, "Notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown style class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2418
    :cond_7
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 2419
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2420
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Style;

    .line 2421
    .local v1, "style":Landroid/app/Notification$Style;
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 2423
    if-eqz v1, :cond_1

    .line 2424
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2426
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    .end local v1    # "style":Landroid/app/Notification$Style;
    :catch_0
    move-exception v3

    .line 2427
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notification"

    const-string/jumbo v6, "Could not create Style"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private adaptNotificationHeaderForBigContentView(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "result"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3681
    if-eqz p1, :cond_0

    .line 3682
    const-string/jumbo v0, "setExpanded"

    const v1, 0x1020436

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 3680
    :cond_0
    return-void
.end method

.method private applyStandardTemplate(I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 3317
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z

    .prologue
    .line 3324
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3326
    .local v0, "ex":Landroid/os/Bundle;
    const-string/jumbo v3, "android.title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3327
    .local v2, "title":Ljava/lang/CharSequence;
    const-string/jumbo v3, "android.text"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3328
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, p2, v2, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v3

    return-object v3
.end method

.method private applyStandardTemplate(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    const v5, 0x1020016

    .line 3336
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 3338
    .local v0, "contentView":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    .line 3340
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3342
    .local v1, "ex":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 3343
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->bindLargeIcon(Landroid/widget/RemoteViews;)V

    .line 3344
    invoke-direct {p0, p2, v0, v1}, Landroid/app/Notification$Builder;->handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z

    move-result v2

    .line 3345
    .local v2, "showProgress":Z
    if-eqz p3, :cond_0

    .line 3346
    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3347
    invoke-virtual {v0, v5, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3348
    if-eqz v2, :cond_2

    .line 3349
    const/4 v4, -0x2

    .line 3348
    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewLayoutWidth(II)V

    .line 3352
    :cond_0
    if-eqz p4, :cond_1

    .line 3353
    if-eqz v2, :cond_3

    const v3, 0x102044e

    .line 3355
    .local v3, "textId":I
    :goto_1
    invoke-virtual {v0, v3, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3356
    invoke-virtual {v0, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3359
    .end local v3    # "textId":I
    :cond_1
    if-nez v2, :cond_4

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v4}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v4

    :goto_2
    invoke-virtual {p0, v0, v4}, Landroid/app/Notification$Builder;->setContentMinHeight(Landroid/widget/RemoteViews;Z)V

    .line 3361
    return-object v0

    .line 3350
    :cond_2
    const/4 v4, -0x1

    goto :goto_0

    .line 3354
    :cond_3
    const v3, 0x1020090

    goto :goto_1

    .line 3359
    :cond_4
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "layoutId"    # I

    .prologue
    .line 3551
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3553
    .local v0, "ex":Landroid/os/Bundle;
    const-string/jumbo v3, "android.title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3554
    .local v2, "title":Ljava/lang/CharSequence;
    const-string/jumbo v3, "android.text"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3555
    .local v1, "text":Ljava/lang/CharSequence;
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3, v2, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v3

    return-object v3
.end method

.method private applyStandardTemplateWithActions(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 9
    .param p1, "layoutId"    # I
    .param p2, "hasProgress"    # Z
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 3560
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 3562
    .local v2, "big":Landroid/widget/RemoteViews;
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    .line 3564
    const/4 v6, 0x0

    .line 3566
    .local v6, "validRemoteInput":Z
    iget-object v7, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3567
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 3568
    const v7, 0x1020430

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3569
    const v7, 0x10203eb

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3570
    const v7, 0x1020440

    .line 3571
    const v8, 0x1050043

    .line 3570
    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    .line 3572
    const/4 v7, 0x3

    if-le v0, v7, :cond_0

    const/4 v0, 0x3

    .line 3573
    :cond_0
    const/4 v4, 0x0

    .end local v6    # "validRemoteInput":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 3574
    iget-object v7, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 3575
    .local v1, "action":Landroid/app/Notification$Action;
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v7

    or-int/2addr v6, v7

    .line 3577
    .local v6, "validRemoteInput":Z
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 3578
    .local v3, "button":Landroid/widget/RemoteViews;
    const v7, 0x10203eb

    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 3573
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3581
    .end local v1    # "action":Landroid/app/Notification$Action;
    .end local v3    # "button":Landroid/widget/RemoteViews;
    .end local v4    # "i":I
    .local v6, "validRemoteInput":Z
    :cond_1
    const v7, 0x1020430

    const/16 v8, 0x8

    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3584
    .end local v6    # "validRemoteInput":Z
    :cond_2
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "android.remoteInputHistory"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 3585
    .local v5, "replyText":[Ljava/lang/CharSequence;
    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 3586
    array-length v7, v5

    if-lez v7, :cond_3

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3602
    :cond_3
    :goto_1
    return-object v2

    .line 3587
    :cond_4
    const v7, 0x1020431

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3588
    const/4 v7, 0x0

    aget-object v7, v5, v7

    const v8, 0x1020435

    invoke-virtual {v2, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3590
    array-length v7, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3591
    const v7, 0x1020434

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3592
    const/4 v7, 0x1

    aget-object v7, v5, v7

    const v8, 0x1020434

    invoke-virtual {v2, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3594
    array-length v7, v5

    const/4 v8, 0x2

    if-le v7, v8, :cond_3

    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3596
    const v7, 0x1020433

    const/4 v8, 0x0

    .line 3595
    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3597
    const/4 v7, 0x2

    aget-object v7, v5, v7

    const v8, 0x1020433

    invoke-virtual {v2, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private bindExpandButton(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, -0x1

    .line 3427
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v4

    .line 3428
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3427
    const v1, 0x102043c

    const/4 v2, 0x0

    move-object v0, p1

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3429
    const-string/jumbo v0, "setOriginalNotificationColor"

    .line 3430
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v1

    .line 3429
    const v2, 0x1020436

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3426
    return-void
.end method

.method private bindHeaderAppName(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v1, 0x1020437

    .line 3513
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3514
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 3512
    return-void
.end method

.method private bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v6, 0x10200a7

    const v8, 0x102043b

    const/4 v3, 0x0

    .line 3434
    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3436
    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mHasHeaderText:Z

    if-eqz v1, :cond_0

    .line 3437
    const v1, 0x102043a

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3438
    iput-boolean v3, p0, Landroid/app/Notification$Builder;->mHasHeaderText:Z

    .line 3441
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.showChronometer"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3442
    invoke-virtual {p1, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3443
    const-string/jumbo v1, "setBase"

    .line 3444
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 3443
    invoke-virtual {p1, v8, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 3445
    const-string/jumbo v1, "setStarted"

    const/4 v2, 0x1

    invoke-virtual {p1, v8, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 3446
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.chronometerCountDown"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3447
    .local v0, "countsDown":Z
    invoke-virtual {p1, v8, v0}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    .line 3433
    .end local v0    # "countsDown":Z
    :goto_0
    return-void

    .line 3449
    :cond_1
    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3450
    const-string/jumbo v1, "setTime"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v6, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto :goto_0

    .line 3455
    :cond_2
    const-string/jumbo v1, "setTime"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    :goto_1
    invoke-virtual {p1, v6, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->-get0(Landroid/app/Notification;)J

    move-result-wide v2

    goto :goto_1
.end method

.method private bindHeaderText(Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v4, 0x1020439

    const/4 v3, 0x0

    .line 3460
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.subText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3461
    .local v0, "headerText":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-boolean v1, v1, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v1, :cond_0

    .line 3462
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->hasSummaryInHeader()Z

    move-result v1

    .line 3461
    if-eqz v1, :cond_0

    .line 3463
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v0, v1, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 3465
    :cond_0
    if-nez v0, :cond_1

    .line 3466
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    .line 3467
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.infoText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3468
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.infoText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3470
    :cond_1
    if-eqz v0, :cond_2

    .line 3472
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mHasHeaderText:Z

    .line 3473
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3474
    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3475
    const v1, 0x1020438

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3459
    :cond_2
    return-void
.end method

.method private bindLargeIcon(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v3, 0x1020044

    .line 3403
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 3404
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3406
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3407
    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3408
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 3409
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    .line 3410
    const v0, 0x1050041

    .line 3411
    .local v0, "endMargin":I
    const v1, 0x102044d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 3412
    const v1, 0x1020090

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 3413
    const v1, 0x102000d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 3402
    .end local v0    # "endMargin":I
    :cond_1
    return-void
.end method

.method private bindNotificationHeader(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3418
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindSmallIcon(Landroid/widget/RemoteViews;)V

    .line 3419
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;)V

    .line 3420
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderText(Landroid/widget/RemoteViews;)V

    .line 3421
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V

    .line 3422
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindExpandButton(Landroid/widget/RemoteViews;)V

    .line 3423
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindProfileBadge(Landroid/widget/RemoteViews;)V

    .line 3417
    return-void
.end method

.method private bindProfileBadge(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v2, 0x102043d

    .line 3273
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3275
    .local v0, "profileBadge":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 3276
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 3277
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3272
    :cond_0
    return-void
.end method

.method private bindSmallIcon(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3518
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_0

    .line 3519
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->-set3(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3521
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 3522
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    .line 3517
    return-void
.end method

.method private generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;
    .locals 6
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    const v5, 0x102042d

    .line 3752
    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_4

    const/4 v2, 0x1

    .line 3753
    .local v2, "tombstone":Z
    :goto_0
    new-instance v1, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 3754
    if-eqz v2, :cond_5

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    move-result v3

    .line 3753
    :goto_1
    invoke-direct {v1, v4, v3}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 3756
    .local v1, "button":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 3757
    .local v0, "ai":Landroid/graphics/drawable/Icon;
    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3758
    if-nez v2, :cond_0

    .line 3759
    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3761
    :cond_0
    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 3762
    invoke-static {p1}, Landroid/app/Notification$Action;->-get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3763
    invoke-static {p1}, Landroid/app/Notification$Action;->-get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 3765
    :cond_1
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->color:I

    if-eqz v3, :cond_2

    .line 3766
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 3770
    :cond_2
    sget-boolean v3, Landroid/app/Notification$Builder;->mShowActionBg:Z

    if-eqz v3, :cond_3

    .line 3771
    const-string/jumbo v3, "setBackgroundResource"

    .line 3772
    const v4, 0x10805a6

    .line 3771
    invoke-virtual {v1, v5, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3775
    :cond_3
    return-object v1

    .line 3752
    .end local v0    # "ai":Landroid/graphics/drawable/Icon;
    .end local v1    # "button":Landroid/widget/RemoteViews;
    .end local v2    # "tombstone":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "tombstone":Z
    goto :goto_0

    .line 3755
    :cond_5
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    move-result v3

    goto :goto_1
.end method

.method private getActionLayoutResource()I
    .locals 1

    .prologue
    .line 4055
    const v0, 0x1090096

    return v0
.end method

.method private getActionTombstoneLayoutResource()I
    .locals 1

    .prologue
    .line 4059
    const v0, 0x1090098

    return v0
.end method

.method private getAllExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 3100
    iget-object v1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 3101
    .local v0, "saveExtras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3102
    return-object v0
.end method

.method private getBaseLayoutResource()I
    .locals 1

    .prologue
    .line 4031
    const v0, 0x109009c

    return v0
.end method

.method private getBigBaseLayoutResource()I
    .locals 1

    .prologue
    .line 4035
    const v0, 0x109009d

    return v0
.end method

.method private getBigPictureLayoutResource()I
    .locals 1

    .prologue
    .line 4039
    const v0, 0x109009f

    return v0
.end method

.method private getBigTextLayoutResource()I
    .locals 1

    .prologue
    .line 4043
    const v0, 0x10900a0

    return v0
.end method

.method private getColorUtil()Lcom/android/internal/util/NotificationColorUtil;
    .locals 2

    .prologue
    .line 2436
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mColorUtilInited:Z

    if-nez v0, :cond_0

    .line 2437
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mColorUtilInited:Z

    .line 2438
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 2439
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 2442
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    return-object v0
.end method

.method private getInboxLayoutResource()I
    .locals 1

    .prologue
    .line 4047
    const v0, 0x10900a1

    return v0
.end method

.method private getMessagingLayoutResource()I
    .locals 1

    .prologue
    .line 4051
    const v0, 0x10900a3

    return v0
.end method

.method private static getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "templateClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3899
    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/Class;

    .line 3900
    const-class v3, Landroid/app/Notification$BigTextStyle;

    aput-object v3, v0, v2

    const-class v3, Landroid/app/Notification$BigPictureStyle;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$InboxStyle;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$MediaStyle;

    const/4 v4, 0x3

    aput-object v3, v0, v4

    .line 3901
    const-class v3, Landroid/app/Notification$DecoratedCustomViewStyle;

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    const/4 v4, 0x5

    aput-object v3, v0, v4

    .line 3902
    const-class v3, Landroid/app/Notification$MessagingStyle;

    const/4 v4, 0x6

    aput-object v3, v0, v4

    .line 3903
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 3904
    .local v1, "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3905
    return-object v1

    .line 3903
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3908
    .end local v1    # "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getProfileBadge()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3259
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3260
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 3261
    return-object v4

    .line 3263
    :cond_0
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3264
    const v5, 0x105007a

    .line 3263
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3265
    .local v3, "size":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3266
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3267
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6, v6, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3268
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3269
    return-object v1
.end method

.method private getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3247
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 3250
    const/4 v0, 0x0

    return-object v0

    .line 3254
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3255
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 3254
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "hasProgress"    # Z
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "ex"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x102000d

    const/4 v5, 0x0

    .line 3380
    const-string/jumbo v4, "android.progressMax"

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3381
    .local v2, "max":I
    const-string/jumbo v4, "android.progress"

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3382
    .local v3, "progress":I
    const-string/jumbo v4, "android.progressIndeterminate"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3383
    .local v1, "ind":Z
    if-eqz p1, :cond_2

    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    .line 3384
    :cond_0
    invoke-virtual {p2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3385
    invoke-virtual {p2, v6, v2, v3, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 3388
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 3389
    const v5, 0x1060053

    .line 3388
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 3387
    invoke-virtual {p2, v6, v4}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    .line 3390
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->color:I

    if-eqz v4, :cond_1

    .line 3391
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 3392
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p2, v6, v0}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 3393
    invoke-virtual {p2, v6, v0}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 3395
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v4, 0x1

    return v4

    .line 3397
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {p2, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3398
    return v5
.end method

.method private hasValidRemoteInput(Landroid/app/Notification$Action;)Z
    .locals 7
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    const/4 v4, 0x0

    .line 3606
    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_1

    .line 3608
    :cond_0
    return v4

    .line 3611
    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v2

    .line 3612
    .local v2, "remoteInputs":[Landroid/app/RemoteInput;
    if-nez v2, :cond_2

    .line 3613
    return v4

    .line 3616
    :cond_2
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v1, v2, v3

    .line 3617
    .local v1, "r":Landroid/app/RemoteInput;
    invoke-virtual {v1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 3618
    .local v0, "choices":[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v0, :cond_4

    array-length v6, v0

    if-eqz v6, :cond_4

    .line 3619
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 3616
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3622
    .end local v0    # "choices":[Ljava/lang/CharSequence;
    .end local v1    # "r":Landroid/app/RemoteInput;
    :cond_5
    return v4
.end method

.method private hideLine1Text(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "result"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3675
    if-eqz p1, :cond_0

    .line 3676
    const v0, 0x102044e

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3674
    :cond_0
    return-void
.end method

.method private isLegacy()Z
    .locals 1

    .prologue
    .line 3783
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maybeCloneStrippedForDelivery(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 9
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 3989
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.template"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3993
    .local v4, "templateClass":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3994
    invoke-static {v4}, Landroid/app/Notification$Builder;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_0

    .line 3995
    return-object p0

    .line 3999
    :cond_0
    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_6

    .line 4000
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.contentViewActionCount"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 4001
    iget-object v6, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    .line 4000
    if-ne v5, v6, :cond_5

    const/4 v2, 0x1

    .line 4002
    .local v2, "stripContentView":Z
    :goto_0
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_8

    .line 4003
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.bigViewActionCount"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 4004
    iget-object v6, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    .line 4003
    if-ne v5, v6, :cond_7

    const/4 v1, 0x1

    .line 4005
    .local v1, "stripBigContentView":Z
    :goto_1
    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_a

    .line 4006
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.hudViewActionCount"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 4007
    iget-object v6, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    .line 4006
    if-ne v5, v6, :cond_9

    const/4 v3, 0x1

    .line 4010
    .local v3, "stripHeadsUpContentView":Z
    :goto_2
    if-nez v2, :cond_1

    if-eqz v1, :cond_b

    .line 4014
    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    .line 4015
    .local v0, "clone":Landroid/app/Notification;
    if-eqz v2, :cond_2

    .line 4016
    iput-object v7, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 4017
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.contentViewActionCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4019
    :cond_2
    if-eqz v1, :cond_3

    .line 4020
    iput-object v7, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 4021
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.bigViewActionCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4023
    :cond_3
    if-eqz v3, :cond_4

    .line 4024
    iput-object v7, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 4025
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.hudViewActionCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4027
    :cond_4
    return-object v0

    .line 4000
    .end local v0    # "clone":Landroid/app/Notification;
    .end local v1    # "stripBigContentView":Z
    .end local v2    # "stripContentView":Z
    .end local v3    # "stripHeadsUpContentView":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "stripContentView":Z
    goto :goto_0

    .line 3999
    .end local v2    # "stripContentView":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "stripContentView":Z
    goto :goto_0

    .line 4003
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "stripBigContentView":Z
    goto :goto_1

    .line 4002
    .end local v1    # "stripBigContentView":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "stripBigContentView":Z
    goto :goto_1

    .line 4006
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "stripHeadsUpContentView":Z
    goto :goto_2

    .line 4005
    .end local v3    # "stripHeadsUpContentView":Z
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "stripHeadsUpContentView":Z
    goto :goto_2

    .line 4010
    :cond_b
    if-nez v3, :cond_1

    .line 4011
    return-object p0
.end method

.method private processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, -0x1

    .line 3819
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3820
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    .line 3819
    if-eqz v0, :cond_0

    .line 3822
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v4

    .line 3823
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3822
    const v1, 0x1020006

    const/4 v2, 0x0

    move-object v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3818
    :cond_0
    return-void
.end method

.method private processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 3787
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3788
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/NotificationColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3790
    :cond_0
    return-object p1
.end method

.method private processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "smallIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, -0x1

    .line 3802
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v7

    .line 3804
    .local v7, "colorable":Z
    if-eqz v7, :cond_0

    .line 3805
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v4

    .line 3806
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3805
    const v1, 0x1020006

    const/4 v2, 0x0

    move-object v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3808
    :cond_0
    const-string/jumbo v0, "setOriginalIconColor"

    .line 3809
    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v3

    .line 3808
    :cond_1
    const v1, 0x1020436

    invoke-virtual {p2, v1, v0, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3797
    return-void
.end method

.method public static recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 3880
    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3881
    const-string/jumbo v4, "android.appInfo"

    .line 3880
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3883
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 3886
    const/4 v3, 0x4

    .line 3885
    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3895
    .local v1, "builderContext":Landroid/content/Context;
    :goto_0
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-object v3

    .line 3887
    .end local v1    # "builderContext":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 3888
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ApplicationInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    move-object v1, p0

    .restart local v1    # "builderContext":Landroid/content/Context;
    goto :goto_0

    .line 3892
    .end local v1    # "builderContext":Landroid/content/Context;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v1, p0

    .restart local v1    # "builderContext":Landroid/content/Context;
    goto :goto_0
.end method

.method private resetContentMargins(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v1, 0x0

    .line 3312
    const v0, 0x102044d

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 3313
    const v0, 0x1020090

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 3311
    return-void
.end method

.method private resetNotificationHeader(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v6, 0x102043d

    const v5, 0x1020439

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 3298
    const v0, 0x1020006

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 3299
    const-string/jumbo v0, "setExpanded"

    const v1, 0x1020436

    invoke-virtual {p1, v1, v0, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 3300
    const v0, 0x1020437

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3301
    const v0, 0x102043b

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3302
    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3303
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3304
    const v0, 0x1020438

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3305
    const v0, 0x102043a

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3306
    const v0, 0x10200a7

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3307
    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 3308
    invoke-virtual {p1, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3297
    return-void
.end method

.method private resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v5, 0x102044e

    const v4, 0x1020090

    const v3, 0x1020016

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 3282
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 3283
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetContentMargins(Landroid/widget/RemoteViews;)V

    .line 3284
    const v0, 0x1020044

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3285
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3286
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3287
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3288
    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3289
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3290
    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3291
    const v0, 0x102000d

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3281
    return-void
.end method

.method private resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "big"    # Landroid/widget/RemoteViews;

    .prologue
    const v4, 0x1020434

    const v3, 0x1020433

    const v0, 0x10203eb

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 3536
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3537
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 3539
    const v0, 0x1020431

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3540
    const v0, 0x1020435

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3542
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3543
    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3544
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3545
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3547
    const v0, 0x1020440

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    .line 3533
    return-void
.end method

.method private resolveColor()I
    .locals 2

    .prologue
    .line 3845
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    if-eqz v0, :cond_0

    .line 3846
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    return v0

    .line 3848
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v1, 0x106004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0
.end method

.method private sanitizeColor()V
    .locals 3

    .prologue
    .line 3828
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    if-eqz v0, :cond_0

    .line 3829
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->color:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->color:I

    .line 3827
    :cond_0
    return-void
.end method

.method private showsTimeOrChronometer()Z
    .locals 1

    .prologue
    .line 3530
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsTime()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsChronometer()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3126
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3127
    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    .line 3146
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3147
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3060
    if-eqz p1, :cond_0

    .line 3061
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3063
    :cond_0
    return-object p0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 3003
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3004
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 4

    .prologue
    .line 3925
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3926
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3929
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/app/Notification;->-set0(Landroid/app/Notification;J)J

    .line 3932
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    .line 3934
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 3936
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    .line 3937
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 3940
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    .line 3941
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3963
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 3964
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3967
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0

    .line 3942
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_5

    .line 3943
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3944
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.contentViewActionCount"

    .line 3945
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 3944
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3947
    :cond_5
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_6

    .line 3948
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3949
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_6

    .line 3950
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.bigViewActionCount"

    .line 3951
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 3950
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3954
    :cond_6
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    .line 3955
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3956
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    .line 3957
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.hudViewActionCount"

    .line 3958
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 3957
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 3976
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 3977
    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 4

    .prologue
    .line 3858
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3859
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 3860
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3862
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3863
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.people"

    .line 3864
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3863
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3866
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    .line 3868
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.contains.customView"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3870
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0

    .line 3867
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    goto :goto_0
.end method

.method public createBigContentView()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    .line 3647
    const/4 v0, 0x0

    .line 3648
    .local v0, "result":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 3649
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3651
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_3

    .line 3652
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3653
    .local v0, "result":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->hideLine1Text(Landroid/widget/RemoteViews;)V

    .line 3657
    .end local v0    # "result":Landroid/widget/RemoteViews;
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->adaptNotificationHeaderForBigContentView(Landroid/widget/RemoteViews;)V

    .line 3658
    return-object v0

    .line 3650
    .local v0, "result":Landroid/widget/RemoteViews;
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    return-object v1

    .line 3654
    :cond_3
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3655
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .local v0, "result":Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method public createContentView()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    .line 3632
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3634
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2

    .line 3635
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3636
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_2

    .line 3637
    return-object v0

    .line 3633
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object v1

    .line 3640
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public createHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3690
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 3691
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3693
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2

    .line 3694
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3695
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_3

    .line 3696
    return-object v0

    .line 3692
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    return-object v1

    .line 3698
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 3699
    return-object v2

    .line 3702
    :cond_3
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/app/Notification$Extender;

    .prologue
    .line 3217
    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 3218
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 3096
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3916
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public loadHeaderAppName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 3483
    const/4 v0, 0x0

    .line 3484
    .local v0, "name":Ljava/lang/CharSequence;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3485
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.substName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3490
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3491
    .local v1, "pkg":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.substName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3493
    .local v3, "subName":Ljava/lang/String;
    const-string/jumbo v4, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    .line 3492
    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 3494
    move-object v0, v3

    .line 3502
    .end local v0    # "name":Ljava/lang/CharSequence;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3503
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3505
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3507
    const/4 v4, 0x0

    return-object v4

    .line 3496
    .restart local v0    # "name":Ljava/lang/CharSequence;
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v3    # "subName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "warning: pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3497
    const-string/jumbo v6, " attempting to substitute app name \'"

    .line 3496
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3498
    const-string/jumbo v6, "\' without holding perm "

    .line 3496
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3499
    const-string/jumbo v6, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    .line 3496
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3510
    .end local v0    # "name":Ljava/lang/CharSequence;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public makeNotificationHeader()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 3667
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3668
    const v2, 0x109009b

    .line 3667
    invoke-direct {v0, v1, v2}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 3669
    .local v0, "header":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 3670
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 3671
    return-object v0
.end method

.method public makePublicContentView()Landroid/widget/RemoteViews;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 3711
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v7, :cond_0

    .line 3712
    iget-object v7, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-static {v7, v8}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3713
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v7

    return-object v7

    .line 3715
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_0
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3716
    .local v5, "savedBundle":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 3717
    .local v6, "style":Landroid/app/Notification$Style;
    iput-object v8, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 3718
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v7}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 3719
    .local v1, "largeIcon":Landroid/graphics/drawable/Icon;
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v7, v8}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3720
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 3721
    .local v2, "largeIconLegacy":Landroid/graphics/Bitmap;
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v8, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 3722
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3723
    .local v3, "publicExtras":Landroid/os/Bundle;
    const-string/jumbo v7, "android.showWhen"

    .line 3724
    const-string/jumbo v8, "android.showWhen"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 3723
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3725
    const-string/jumbo v7, "android.showChronometer"

    .line 3726
    const-string/jumbo v8, "android.showChronometer"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 3725
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3727
    const-string/jumbo v7, "android.chronometerCountDown"

    .line 3728
    const-string/jumbo v8, "android.chronometerCountDown"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 3727
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3729
    const-string/jumbo v7, "android.title"

    .line 3730
    iget-object v8, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v9, 0x104014d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3729
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3731
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v3, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3732
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 3733
    .local v4, "publicView":Landroid/widget/RemoteViews;
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v5, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3734
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v7, v1}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3735
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v2, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 3736
    iput-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 3737
    return-object v4
.end method

.method resolveContrastColor()I
    .locals 3

    .prologue
    .line 3834
    iget v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3835
    iget v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    return v1

    .line 3837
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;I)I

    move-result v0

    .line 3839
    .local v0, "contrasted":I
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    iput v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    .line 3840
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    return v0
.end method

.method public varargs setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "actions"    # [Landroid/app/Notification$Action;

    .prologue
    .line 3158
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 3160
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3162
    :cond_0
    return-object p0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 2931
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 2932
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 2976
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 2977
    return-object p0
.end method

.method public setChronometerCountDown(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "countDown"    # Z

    .prologue
    .line 2499
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2500
    return-object p0
.end method

.method public setColor(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "argb"    # I

    .prologue
    .line 3241
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->color:I

    .line 3242
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()V

    .line 3243
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2668
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 2645
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.infoText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2646
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2716
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2717
    return-object p0
.end method

.method setContentMinHeight(Landroid/widget/RemoteViews;Z)V
    .locals 3
    .param p1, "remoteView"    # Landroid/widget/RemoteViews;
    .param p2, "hasMinHeight"    # Z

    .prologue
    .line 3370
    const/4 v0, 0x0

    .line 3371
    .local v0, "minHeight":I
    if-eqz p2, :cond_0

    .line 3373
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3374
    const v2, 0x105004a

    .line 3373
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3376
    :cond_0
    const-string/jumbo v1, "setMinimumHeight"

    const v2, 0x102043f

    invoke-virtual {p1, v2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3369
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2567
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.text"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2568
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2559
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.title"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2560
    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2689
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2690
    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2678
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2679
    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2700
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2701
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "defaults"    # I

    .prologue
    .line 2956
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 2957
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2726
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 2727
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3079
    if-eqz p1, :cond_0

    .line 3080
    iput-object p1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 3082
    :cond_0
    return-object p0
.end method

.method public setFlag(IZ)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 3225
    if-eqz p2, :cond_0

    .line 3226
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3230
    :goto_0
    return-object p0

    .line 3228
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .prologue
    .line 2751
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 2752
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 2753
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 3019
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set1(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3020
    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "isGroupSummary"    # Z

    .prologue
    .line 3031
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3032
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 2785
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2796
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 2797
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.largeIcon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2798
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    .line 2883
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 2884
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 2885
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 2886
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 2887
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 2889
    :cond_1
    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "localOnly"    # Z

    .prologue
    .line 2942
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 2943
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 2630
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    .line 2631
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .prologue
    .line 2909
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 2910
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .prologue
    .line 2920
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 2921
    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "pri"    # I

    .prologue
    .line 2966
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->priority:I

    .line 2967
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 2655
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.progress"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2656
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.progressMax"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2657
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.progressIndeterminate"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2658
    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v1, 0x0

    .line 3203
    if-eqz p1, :cond_0

    .line 3204
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 3205
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 3209
    :goto_0
    return-object p0

    .line 3207
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    goto :goto_0
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 6
    .param p1, "text"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 2609
    if-nez p1, :cond_0

    .line 2610
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.remoteInputHistory"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 2619
    :goto_0
    return-object p0

    .line 2612
    :cond_0
    array-length v3, p1

    const/4 v4, 0x5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2613
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 2614
    .local v2, "safe":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2615
    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2614
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2617
    :cond_1
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.remoteInputHistory"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setShowActionBg(Z)V
    .locals 0
    .param p1, "isShowActionBg"    # Z

    .prologue
    .line 3747
    sput-boolean p1, Landroid/app/Notification$Builder;->mShowActionBg:Z

    .line 3746
    return-void
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 2466
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.showWhen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2467
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 2518
    if-eqz p1, :cond_0

    .line 2519
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 2518
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0

    .line 2520
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 2535
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 2536
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2548
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 2549
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2550
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 2552
    :cond_0
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sortKey"    # Ljava/lang/String;

    .prologue
    .line 3048
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set4(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3049
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 2814
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2815
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2816
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2832
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2833
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 2834
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 2848
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2849
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2850
    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "style"    # Landroid/app/Notification$Style;

    .prologue
    .line 3171
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_0

    .line 3172
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 3173
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    .line 3174
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 3175
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.template"

    invoke-virtual {p1}, Landroid/app/Notification$Style;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    :cond_0
    :goto_0
    return-object p0

    .line 3177
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2590
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.subText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2591
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 2762
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2763
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2772
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2774
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 2486
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.showChronometer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2487
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "pattern"    # [J

    .prologue
    .line 2866
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 2867
    return-object p0
.end method

.method public setVisibility(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 3192
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->visibility:I

    .line 3193
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 2455
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 2456
    return-object p0
.end method
