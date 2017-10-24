.class public Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;
.super Ljava/lang/Object;
.source "NavigationBarSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;,
        Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;,
        Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;


# instance fields
.field private mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationBarSettingsObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mNavigationBarSettingsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    .line 52
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mNavigationBarSettingsObserver:Landroid/database/ContentObserver;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setUpSettingsItem()V

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->readSettingsDB()V

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerSettingsObserver()V

    .line 71
    return-void
.end method

.method private broadcastChange(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 194
    const-string/jumbo v3, "NavBarSettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "*** broadcastChange for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 196
    .local v2, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;>;"
    if-eqz v2, :cond_1

    .line 197
    const-string/jumbo v3, "NavBarSettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "*** broadcastChange tempList.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 199
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    .line 200
    .local v1, "listener":Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;
    if-eqz v1, :cond_0

    .line 201
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    .line 198
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    const-string/jumbo v3, "NavBarSettingsHelper"

    const-string/jumbo v4, "*** broadcastChange listener == null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 207
    .end local v0    # "i":I
    .end local v1    # "listener":Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;
    :cond_1
    const-string/jumbo v3, "NavBarSettingsHelper"

    const-string/jumbo v4, "*** broadcastChange tempList == null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    sget-object v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->sInstance:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->sInstance:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    .line 129
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->sInstance:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    return-object v0
.end method

.method private readSettingsDB()V
    .locals 4

    .prologue
    .line 104
    const-string/jumbo v2, "NavBarSettingsHelper"

    const-string/jumbo v3, "readSettingsDB()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 106
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method private registerSettingsObserver()V
    .locals 4

    .prologue
    .line 112
    const-string/jumbo v2, "NavBarSettingsHelper"

    const-string/jumbo v3, "registerSettingsObserver()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 114
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->registerObserver()V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method private setUpSettingsItem()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 82
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_left_additional"

    const-string/jumbo v3, "String"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_left"

    const-string/jumbo v3, "String"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_center"

    const-string/jumbo v3, "String"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_right"

    const-string/jumbo v3, "String"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_right_additional"

    const-string/jumbo v3, "String"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_key_order"

    const-string/jumbo v3, "Int"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_color"

    const-string/jumbo v3, "Int"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_use_theme_default"

    const-string/jumbo v3, "Int"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_current_color"

    const-string/jumbo v3, "Int"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "navigationbar_height"

    const-string/jumbo v3, "Int"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method


# virtual methods
.method public getNavBarCenterForceAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavBarLeftCornerForceAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavBarLeftForceAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavBarRightCornerForceAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavBarRightForceAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getNavigationBarCurrentColor()I
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getNavigationBarHeight()I
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getNavigationBarUseThemeDefault()I
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public isDefaultNavibationBarButtonArray()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public varargs registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V
    .locals 9
    .param p1, "listener"    # Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;
    .param p2, "uri"    # [Landroid/net/Uri;

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    const-string/jumbo v5, "NavBarSettingsHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "*** register listener for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    array-length v3, p2

    .line 136
    .local v3, "sizeOfUris":I
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 137
    .local v4, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 138
    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 139
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    const-string/jumbo v5, "NavBarSettingsHelper"

    const-string/jumbo v6, "Object tried to add another listener"

    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v8, "Called by"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_0
    if-nez v0, :cond_1

    .line 143
    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v6, p2, v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 133
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;>;"
    .end local v1    # "i":I
    .end local v3    # "sizeOfUris":I
    .end local v4    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v1    # "i":I
    .restart local v3    # "sizeOfUris":I
    .restart local v4    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;"
    :cond_2
    monitor-exit p0

    .line 149
    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 150
    .local v2, "size":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    .line 151
    const-string/jumbo v6, "NavBarSettingsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mListeners["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "] = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 152
    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 152
    const-string/jumbo v7, "..."

    .line 151
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 132
    :cond_3
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "navigationbar_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->setIntValue(I)V

    .line 353
    return-void
.end method

.method public setNavigationBarCurrentColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "navigationbar_current_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->setIntValue(I)V

    .line 371
    return-void
.end method

.method public setNavigationBarUseThemeDefault(I)V
    .locals 2
    .param p1, "isDefault"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "navigationbar_use_theme_default"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->setIntValue(I)V

    .line 362
    return-void
.end method

.method public unregisterCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;)V
    .locals 10
    .param p1, "listener"    # Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    .prologue
    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    const-string/jumbo v6, "NavBarSettingsHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "*** unregister listener for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 167
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 168
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 169
    .local v2, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;>;"
    if-eqz v2, :cond_2

    .line 170
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "weakReference$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 171
    .local v4, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_0

    .line 172
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 163
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;>;"
    .end local v4    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;"
    .end local v5    # "weakReference$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 175
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    .restart local v2    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;>;"
    .restart local v5    # "weakReference$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 176
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .end local v5    # "weakReference$iterator":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;>;>;"
    :cond_3
    monitor-exit p0

    .line 182
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 183
    .local v3, "tempSize":I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_4

    .line 184
    const-string/jumbo v7, "NavBarSettingsHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mListeners["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "] = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 185
    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    .line 184
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 185
    const-string/jumbo v8, "..."

    .line 184
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 187
    :cond_4
    if-nez v3, :cond_5

    .line 188
    const-string/jumbo v6, "NavBarSettingsHelper"

    const-string/jumbo v7, "mListeners doesn\'t have any listeners"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_5
    return-void
.end method
