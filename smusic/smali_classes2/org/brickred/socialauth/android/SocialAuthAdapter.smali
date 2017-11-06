.class public Lorg/brickred/socialauth/android/SocialAuthAdapter;
.super Ljava/lang/Object;
.source "SocialAuthAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brickred/socialauth/android/SocialAuthAdapter$UploadImageTask;,
        Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;
    }
.end annotation


# instance fields
.field private final UPDATE_STATUS_URL:Ljava/lang/String;

.field private final authMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/brickred/socialauth/util/OAuthConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final authProviderLogos:[I

.field private final authProviders:[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field private currentProvider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field private dialogListener:Lorg/brickred/socialauth/android/DialogListener;

.field private final handler:Landroid/os/Handler;

.field private providerCount:I

.field private socialAuthManager:Lorg/brickred/socialauth/SocialAuthManager;

.field private tokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/brickred/socialauth/android/DialogListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/brickred/socialauth/android/DialogListener;

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const-string v0, "https://graph.facebook.com/me/feed"

    iput-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->UPDATE_STATUS_URL:Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->providerCount:I

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->handler:Landroid/os/Handler;

    .line 248
    invoke-static {}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->values()[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    iput-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->authProviders:[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 249
    invoke-static {}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->values()[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->authProviderLogos:[I

    .line 250
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->dialogListener:Lorg/brickred/socialauth/android/DialogListener;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->authMap:Ljava/util/Map;

    .line 252
    return-void
.end method

.method static synthetic access$000(Lorg/brickred/socialauth/android/SocialAuthAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;

    .prologue
    .line 121
    iget v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->providerCount:I

    return v0
.end method

.method static synthetic access$100(Lorg/brickred/socialauth/android/SocialAuthAdapter;)[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;

    .prologue
    .line 121
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->authProviders:[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    return-object v0
.end method

.method static synthetic access$200(Lorg/brickred/socialauth/android/SocialAuthAdapter;)[I
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;

    .prologue
    .line 121
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->authProviderLogos:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/android/DialogListener;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;

    .prologue
    .line 121
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->dialogListener:Lorg/brickred/socialauth/android/DialogListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;

    .prologue
    .line 121
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lorg/brickred/socialauth/android/SocialAuthAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/SocialAuthManager;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;

    .prologue
    .line 121
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->socialAuthManager:Lorg/brickred/socialauth/SocialAuthManager;

    return-object v0
.end method

.method static synthetic access$502(Lorg/brickred/socialauth/android/SocialAuthAdapter;Lorg/brickred/socialauth/SocialAuthManager;)Lorg/brickred/socialauth/SocialAuthManager;
    .locals 0
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;
    .param p1, "x1"    # Lorg/brickred/socialauth/SocialAuthManager;

    .prologue
    .line 121
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->socialAuthManager:Lorg/brickred/socialauth/SocialAuthManager;

    return-object p1
.end method

.method static synthetic access$600(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;

    .prologue
    .line 121
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;

    .prologue
    .line 121
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->currentProvider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    return-object v0
.end method

.method static synthetic access$800(Lorg/brickred/socialauth/android/SocialAuthAdapter;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->loadConfig(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lorg/brickred/socialauth/android/SocialAuthAdapter;Landroid/content/Context;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;)V
    .locals 0
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->startDialogAuth(Landroid/content/Context;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;)V

    return-void
.end method

.method private connectProvider(Landroid/content/Context;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;)V
    .locals 19
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "provider"    # Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .prologue
    .line 674
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 676
    .local v9, "pref":Landroid/content/SharedPreferences;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " key"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v15}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 677
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->tokenMap:Ljava/util/Map;

    .line 679
    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 680
    .local v7, "entry":Ljava/util/Map$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->tokenMap:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 685
    .end local v7    # "entry":Ljava/util/Map$Entry;
    :cond_0
    const/4 v4, 0x0

    .line 686
    .local v4, "attrMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 688
    .end local v4    # "attrMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v5, "attrMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->tokenMap:Ljava/util/Map;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " key"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 689
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->tokenMap:Ljava/util/Map;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " secret"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 690
    .local v12, "secret":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->tokenMap:Ljava/util/Map;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " providerid"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 692
    .local v10, "providerid":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "attribute"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 693
    .local v14, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->tokenMap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 694
    .local v3, "attr":Ljava/lang/String;
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Attr "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 697
    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    add-int/lit8 v13, v16, 0x1

    .line 698
    .local v13, "startLocation":I
    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->tokenMap:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 754
    .end local v3    # "attr":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "providerid":Ljava/lang/String;
    .end local v12    # "secret":Ljava/lang/String;
    .end local v13    # "startLocation":I
    .end local v14    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 755
    .end local v5    # "attrMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "attrMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->dialogListener:Lorg/brickred/socialauth/android/DialogListener;

    new-instance v16, Lorg/brickred/socialauth/android/SocialAuthError;

    const-string v17, "Unknown error"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/android/SocialAuthError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface/range {v15 .. v16}, Lorg/brickred/socialauth/android/DialogListener;->onError(Lorg/brickred/socialauth/android/SocialAuthError;)V

    .line 756
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 765
    .end local v4    # "attrMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 703
    .restart local v5    # "attrMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v10    # "providerid":Ljava/lang/String;
    .restart local v12    # "secret":Ljava/lang/String;
    .restart local v14    # "temp":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 704
    .restart local v7    # "entry":Ljava/util/Map$Entry;
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 708
    .end local v7    # "entry":Ljava/util/Map$Entry;
    :cond_3
    new-instance v2, Lorg/brickred/socialauth/util/AccessGrant;

    invoke-direct {v2, v8, v12}, Lorg/brickred/socialauth/util/AccessGrant;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    .local v2, "accessGrant":Lorg/brickred/socialauth/util/AccessGrant;
    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/util/AccessGrant;->setProviderId(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v2, v5}, Lorg/brickred/socialauth/util/AccessGrant;->setAttributes(Ljava/util/Map;)V

    .line 712
    const-string v15, "SocialAuthAdapter"

    const-string v16, "Loading from AccessToken"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v11, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v2, v1}, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;-><init>(Lorg/brickred/socialauth/android/SocialAuthAdapter;Lorg/brickred/socialauth/util/AccessGrant;Landroid/content/Context;)V

    .line 752
    .local v11, "runnable":Ljava/lang/Runnable;
    new-instance v15, Ljava/lang/Thread;

    invoke-direct {v15, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 761
    .end local v2    # "accessGrant":Lorg/brickred/socialauth/util/AccessGrant;
    .end local v5    # "attrMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "providerid":Ljava/lang/String;
    .end local v11    # "runnable":Ljava/lang/Runnable;
    .end local v12    # "secret":Ljava/lang/String;
    .end local v14    # "temp":Ljava/lang/String;
    :cond_4
    const-string v15, "SocialAuthAdapter"

    const-string v16, "Starting webview for authentication"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->currentProvider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->startDialogAuth(Landroid/content/Context;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;)V

    goto :goto_3

    .line 754
    .restart local v4    # "attrMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v6

    goto/16 :goto_2
.end method

.method private loadConfig(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 593
    new-instance v1, Lorg/brickred/socialauth/SocialAuthConfig;

    invoke-direct {v1}, Lorg/brickred/socialauth/SocialAuthConfig;-><init>()V

    .line 594
    .local v1, "config":Lorg/brickred/socialauth/SocialAuthConfig;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 595
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 596
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 597
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 600
    .local v3, "fileExist":Z
    :try_start_0
    const-string v7, "oauth_consumer.properties"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 601
    const/4 v3, 0x1

    .line 607
    :goto_0
    if-eqz v3, :cond_0

    .line 610
    invoke-virtual {v1, v4}, Lorg/brickred/socialauth/SocialAuthConfig;->load(Ljava/io/InputStream;)V

    .line 611
    iget-object v7, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->socialAuthManager:Lorg/brickred/socialauth/SocialAuthManager;

    invoke-virtual {v7, v1}, Lorg/brickred/socialauth/SocialAuthManager;->setSocialAuthConfig(Lorg/brickred/socialauth/SocialAuthConfig;)V

    .line 619
    :goto_1
    return-void

    .line 602
    :catch_0
    move-exception v2

    .line 603
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 604
    const-string v7, "SocialAuthAdapter"

    const-string v8, "oauth_consumer.properties not found"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 614
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v7, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->authMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 615
    .local v5, "key":Ljava/lang/String;
    iget-object v7, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->authMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1, v5, v7}, Lorg/brickred/socialauth/SocialAuthConfig;->addProviderConfig(Ljava/lang/String;Lorg/brickred/socialauth/util/OAuthConfig;)V

    goto :goto_2

    .line 617
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->socialAuthManager:Lorg/brickred/socialauth/SocialAuthManager;

    invoke-virtual {v7, v1}, Lorg/brickred/socialauth/SocialAuthManager;->setSocialAuthConfig(Lorg/brickred/socialauth/SocialAuthConfig;)V

    goto :goto_1
.end method

.method private startDialogAuth(Landroid/content/Context;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .prologue
    .line 632
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 634
    new-instance v0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;

    invoke-direct {v0, p0, p2, p1}, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;-><init>(Lorg/brickred/socialauth/android/SocialAuthAdapter;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;Landroid/content/Context;)V

    .line 658
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 659
    return-void
.end method


# virtual methods
.method public addCallBack(Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;
    .param p2, "callBack"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-virtual {p1}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "facebook"

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "linkedin"

    if-eq v0, v1, :cond_0

    .line 287
    invoke-virtual {p1}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myspace"

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yahoo"

    if-eq v0, v1, :cond_0

    .line 288
    invoke-virtual {p1}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "runkeeper"

    if-ne v0, v1, :cond_1

    .line 289
    :cond_0
    const-string v0, "SocialAuthAdapter"

    const-string v1, "Callback Url not require"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p1, p2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->setCallBackUri(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addConfig(Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;
    .param p4, "permissions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 577
    new-instance v0, Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-direct {v0, p2, p3}, Lorg/brickred/socialauth/util/OAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .local v0, "authConfig":Lorg/brickred/socialauth/util/OAuthConfig;
    invoke-virtual {p1}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/util/OAuthConfig;->setId(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0, p4}, Lorg/brickred/socialauth/util/OAuthConfig;->setCustomPermissions(Ljava/lang/String;)V

    .line 580
    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->authMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    return-void
.end method

.method public addProvider(Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;I)V
    .locals 2
    .param p1, "provider"    # Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;
    .param p2, "logo"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->authProviders:[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    iget v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->providerCount:I

    aput-object p1, v0, v1

    .line 273
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->authProviderLogos:[I

    iget v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->providerCount:I

    aput p2, v0, v1

    .line 274
    iget v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->providerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->providerCount:I

    .line 275
    return-void
.end method

.method public authorize(Landroid/content/Context;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "provider"    # Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .prologue
    .line 518
    iput-object p2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->currentProvider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 519
    const-string v2, "SocialAuthAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected provider is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->currentProvider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->socialAuthManager:Lorg/brickred/socialauth/SocialAuthManager;

    if-eqz v2, :cond_2

    .line 525
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->socialAuthManager:Lorg/brickred/socialauth/SocialAuthManager;

    invoke-virtual {v2}, Lorg/brickred/socialauth/SocialAuthManager;->getConnectedProvidersIds()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->currentProvider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-virtual {v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 526
    const-string v2, "SocialAuthAdapter"

    const-string v3, "Provider already connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 528
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "provider"

    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->currentProvider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-virtual {v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->dialogListener:Lorg/brickred/socialauth/android/DialogListener;

    invoke-interface {v2, v0}, Lorg/brickred/socialauth/android/DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 555
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    invoke-static {p1}, Lorg/brickred/socialauth/android/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 556
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->dialogListener:Lorg/brickred/socialauth/android/DialogListener;

    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthError;

    const-string v4, "Please check your Internet connection"

    new-instance v5, Ljava/lang/Exception;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lorg/brickred/socialauth/android/SocialAuthError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v2, v3}, Lorg/brickred/socialauth/android/DialogListener;->onError(Lorg/brickred/socialauth/android/SocialAuthError;)V

    .line 559
    :cond_0
    return-void

    .line 535
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->connectProvider(Landroid/content/Context;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;)V

    goto :goto_0

    .line 542
    :cond_2
    const-string v2, "SocialAuthAdapter"

    const-string v3, "Loading keys and secrets from configuration"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v2, Lorg/brickred/socialauth/SocialAuthManager;

    invoke-direct {v2}, Lorg/brickred/socialauth/SocialAuthManager;-><init>()V

    iput-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->socialAuthManager:Lorg/brickred/socialauth/SocialAuthManager;

    .line 546
    :try_start_0
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->loadConfig(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->connectProvider(Landroid/content/Context;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;)V

    goto :goto_0

    .line 548
    :catch_0
    move-exception v1

    .line 549
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SocialAuthAdapter"

    const-string v3, "Could not load configuration"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCurrentProvider()Lorg/brickred/socialauth/AuthProvider;
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->currentProvider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->socialAuthManager:Lorg/brickred/socialauth/SocialAuthManager;

    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter;->currentProvider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-virtual {v1}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/SocialAuthManager;->getProvider(Ljava/lang/String;)Lorg/brickred/socialauth/AuthProvider;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserProfile()Lorg/brickred/socialauth/Profile;
    .locals 4

    .prologue
    .line 987
    const/4 v1, 0x0

    .line 989
    .local v1, "profileList":Lorg/brickred/socialauth/Profile;
    :try_start_0
    invoke-virtual {p0}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->getCurrentProvider()Lorg/brickred/socialauth/AuthProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/brickred/socialauth/AuthProvider;->getUserProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v1

    .line 990
    const-string v2, "SocialAuthAdapter"

    const-string v3, "Received Profile Details"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 995
    :goto_0
    return-object v2

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SocialAuthAdapter"

    const-string v3, "Profile Details not Received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateStatus(Ljava/lang/String;Lorg/brickred/socialauth/android/SocialAuthListener;Z)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p3, "shareOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/brickred/socialauth/android/SocialAuthListener",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 837
    .local p2, "listener":Lorg/brickred/socialauth/android/SocialAuthListener;, "Lorg/brickred/socialauth/android/SocialAuthListener<Ljava/lang/Integer;>;"
    new-instance v0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;-><init>(Lorg/brickred/socialauth/android/SocialAuthAdapter;ZLjava/lang/String;Lorg/brickred/socialauth/android/SocialAuthListener;)V

    .line 873
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 874
    return-void
.end method

.method public uploadImageAsync(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILorg/brickred/socialauth/android/SocialAuthListener;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "quality"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lorg/brickred/socialauth/android/SocialAuthListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p5, "listener":Lorg/brickred/socialauth/android/SocialAuthListener;, "Lorg/brickred/socialauth/android/SocialAuthListener<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 1307
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1308
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const-string v2, "PNG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "png"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1309
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p3, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1317
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1318
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->getCurrentProvider()Lorg/brickred/socialauth/AuthProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/brickred/socialauth/AuthProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "facebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1319
    invoke-virtual {p0}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->getCurrentProvider()Lorg/brickred/socialauth/AuthProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/brickred/socialauth/AuthProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "twitter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1320
    :cond_1
    new-instance v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$UploadImageTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p5, v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter$UploadImageTask;-><init>(Lorg/brickred/socialauth/android/SocialAuthAdapter;Lorg/brickred/socialauth/android/SocialAuthListener;Lorg/brickred/socialauth/android/SocialAuthAdapter$1;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter$UploadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1324
    return-void

    .line 1310
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_2
    const-string v2, "JPEG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "JPG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "jpg"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "jpeg"

    .line 1311
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1312
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p3, v2, p4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 1314
    :cond_4
    new-instance v2, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v3, "Image Format not supported"

    invoke-direct {v2, v3}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1322
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :cond_5
    new-instance v2, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v3, "Provider not Supported"

    invoke-direct {v2, v3}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
