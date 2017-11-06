.class public Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;
.super Ljava/lang/Object;
.source "DeepLinkBuilder.java"


# instance fields
.field private mExtras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHostType:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

.field private final mSchemeType:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;)V
    .locals 1
    .param p1, "scheme"    # Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->mExtras:Ljava/util/HashMap;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->mSchemeType:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    .line 30
    return-void
.end method


# virtual methods
.method public action(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;
    .locals 2
    .param p1, "actionType"    # Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .prologue
    .line 38
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ACTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->extra(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 55
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 56
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->mSchemeType:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->mHostType:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    if-eqz v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->mHostType:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 62
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 66
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public extra(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object p0
.end method

.method public host(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;
    .locals 0
    .param p1, "hostType"    # Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->mHostType:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    .line 34
    return-object p0
.end method

.method public link(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;
    .locals 1
    .param p1, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LINK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->extra(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;

    move-result-object v0

    return-object v0
.end method

.method public target(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;
    .locals 2
    .param p1, "targetType"    # Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->extra(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;

    move-result-object v0

    return-object v0
.end method
