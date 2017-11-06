.class public final Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;
.super Ljava/lang/Object;
.source "HomeWidgetRemoteViewBuilderManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    return-object v0
.end method


# virtual methods
.method public addRemoteViewBuilder(ILcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;)V
    .locals 2
    .param p1, "appId"    # I
    .param p2, "builder"    # Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->TAG:Ljava/lang/String;

    const-string v1, "addRemoteViewBuilder. but it was already registered"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clearBuilder()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 45
    return-void
.end method

.method public createNewBuilder(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;Landroid/content/Context;)V
    .locals 0
    .param p1, "factory"    # Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->clearBuilder()V

    .line 32
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;->create(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 33
    return-void
.end method

.method public getAllRemoteViewBuilder()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "cloneMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 54
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-object v0
.end method

.method public hasActiveWidget(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;

    .prologue
    .line 69
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->hasActiveWidget(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->clearBuilder()V

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setArtwork(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 86
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 87
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    .line 89
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "background"    # Landroid/graphics/Bitmap;

    .prologue
    .line 92
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 93
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 94
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    .line 96
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method

.method public setEmptyView(II)V
    .locals 4
    .param p1, "listViewResId"    # I
    .param p2, "listEmptyViewResId"    # I

    .prologue
    .line 171
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 173
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    goto :goto_0

    .line 175
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method

.method public setIsFavorite(Z)V
    .locals 4
    .param p1, "isFavorite"    # Z

    .prologue
    .line 141
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 142
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 143
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setIsFavorite(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    .line 145
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 4
    .param p1, "isPrivate"    # Z

    .prologue
    .line 134
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 136
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setIsPrivate(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    .line 138
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method

.method public setLoadingProgressVisibility(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    .line 113
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 115
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setLoadingProgressVisibility(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    .line 117
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method

.method public setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4
    .param p1, "meta"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 78
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 79
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 80
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    .line 82
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method

.method public setNextPrevController()V
    .locals 4

    .prologue
    .line 106
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 108
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setNextPrevController()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    .line 110
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method

.method public setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "listViewResId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 178
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 179
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 180
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 182
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method

.method public setPlayStatus(Z)V
    .locals 4
    .param p1, "isPlaying"    # Z

    .prologue
    .line 99
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 101
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    .line 103
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method

.method public setQueueMode(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)V
    .locals 4
    .param p1, "queueMode"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    .prologue
    .line 120
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 121
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 122
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setQueueMode(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    .line 124
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method

.method public setRemoteAdapter(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "listViewResId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 165
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 166
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    goto :goto_0

    .line 168
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method

.method public setSoundQuality(J)V
    .locals 5
    .param p1, "soundQuality"    # J

    .prologue
    .line 127
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 128
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 129
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setSoundQuality(J)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    .line 131
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method

.method public setTextsMarqueeEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 148
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 149
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 150
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    .line 152
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method

.method public updateExtraButtons(II)V
    .locals 5
    .param p1, "shuffle"    # I
    .param p2, "repeat"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 157
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 158
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->create(II)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    move-result-object v2

    .line 159
    .local v2, "queueMode":Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;
    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setQueueMode(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    .line 161
    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    .end local v2    # "queueMode":Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;
    :cond_0
    return-void
.end method

.method public updateWidget(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;
    .param p3, "updateList"    # Z

    .prologue
    .line 61
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 62
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    .local v0, "appId":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 64
    .local v1, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {p2, p1, v0, v3, p3}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->updateWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;Z)V

    goto :goto_0

    .line 66
    .end local v0    # "appId":I
    .end local v1    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;>;"
    :cond_0
    return-void
.end method
