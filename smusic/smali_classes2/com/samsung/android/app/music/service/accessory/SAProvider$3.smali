.class Lcom/samsung/android/app/music/service/accessory/SAProvider$3;
.super Ljava/lang/Thread;
.source "SAProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/accessory/SAProvider;->secureSend(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/accessory/SAProvider;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$3;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$3;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 341
    iget-object v4, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$3;->val$str:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 342
    new-instance v1, Ljava/util/ArrayList;

    .line 343
    invoke-static {}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$200()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 344
    .local v1, "listConnections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 345
    .local v2, "peerId":Ljava/lang/Integer;
    invoke-static {}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$200()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;

    .line 347
    .local v3, "uHandler":Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;
    if-eqz v3, :cond_0

    .line 348
    const/16 v5, 0x12c

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$3;->val$str:Ljava/lang/String;

    .line 349
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 348
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;->secureSend(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 356
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "listConnections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "peerId":Ljava/lang/Integer;
    .end local v3    # "uHandler":Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;
    :cond_1
    return-void
.end method
