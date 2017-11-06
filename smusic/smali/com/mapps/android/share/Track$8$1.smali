.class Lcom/mapps/android/share/Track$8$1;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/Track$8;->onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/share/Track$8;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$media_no:Ljava/lang/String;

.field private final synthetic val$pub_no:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track$8;Landroid/content/Context;Lcom/mezzo/common/network/data/DataNTPkgAgList;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    iput-object p2, p0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/mapps/android/share/Track$8$1;->val$data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    iput-object p4, p0, Lcom/mapps/android/share/Track$8$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/mapps/android/share/Track$8$1;->val$pub_no:Ljava/lang/String;

    iput-object p6, p0, Lcom/mapps/android/share/Track$8$1;->val$media_no:Ljava/lang/String;

    iput-object p7, p0, Lcom/mapps/android/share/Track$8$1;->val$handler:Landroid/os/Handler;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 329
    const-string v2, ""

    .line 330
    .local v2, "ad_group_no":Ljava/lang/String;
    const-string v7, ""

    .line 331
    .local v7, "sec_no":Ljava/lang/String;
    const/4 v6, 0x1

    .line 332
    .local v6, "pkg_t":Z
    const/4 v5, 0x1

    .line 333
    .local v5, "pkg_f":Z
    iget-object v10, p0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v10}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v10

    iget-object v11, p0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    const-string/jumbo v12, "package_info"

    iget-object v13, p0, Lcom/mapps/android/share/Track$8$1;->val$data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    invoke-virtual {v13}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->getPackage_info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "result = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/mapps/android/share/Track$8$1;->val$data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    invoke-virtual {v11}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->getPackage_info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 335
    iget-object v10, p0, Lcom/mapps/android/share/Track$8$1;->val$data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    invoke-virtual {v10}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->getListSection()Lcom/mezzo/common/network/data/DataListSection;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mezzo/common/network/data/DataListSection;->size()I

    move-result v9

    .line 336
    .local v9, "sectionLen":I
    const/4 v8, 0x0

    .local v8, "sectionCount":I
    :goto_0
    if-lt v8, v9, :cond_0

    .line 365
    iget-object v10, p0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v10}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v10

    iget-object v11, p0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    const-string/jumbo v12, "package_info"

    invoke-virtual {v10, v11, v12}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 366
    iget-object v10, p0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v10}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v10

    iget-object v11, p0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    const-string/jumbo v12, "pkg_flag"

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/mapps/android/share/Track;->setAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 370
    :goto_1
    iget-object v10, p0, Lcom/mapps/android/share/Track$8$1;->val$handler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 371
    return-void

    .line 337
    :cond_0
    const-string v2, ""

    .line 338
    iget-object v10, p0, Lcom/mapps/android/share/Track$8$1;->val$data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    invoke-virtual {v10}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->getListSection()Lcom/mezzo/common/network/data/DataListSection;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/mezzo/common/network/data/DataListSection;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v4

    check-cast v4, Lcom/mezzo/common/network/data/DataSection;

    .line 339
    .local v4, "dataSection":Lcom/mezzo/common/network/data/DataSection;
    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataSection;->getSection_no()Ljava/lang/String;

    move-result-object v7

    .line 340
    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataSection;->getListAD()Lcom/mezzo/common/network/data/DataListAD;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mezzo/common/network/data/DataListAD;->size()I

    move-result v1

    .line 341
    .local v1, "adLen":I
    const/4 v0, 0x0

    .local v0, "adCount":I
    :goto_2
    if-lt v0, v1, :cond_1

    .line 357
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-lez v10, :cond_5

    .line 358
    iget-object v10, p0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v10}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v10

    iget-object v11, p0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ad_group_no"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/mapps/android/share/Track$8$1;->val$pub_no:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mapps/android/share/Track$8$1;->val$media_no:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ad_group_no"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/mapps/android/share/Track$8$1;->val$pub_no:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mapps/android/share/Track$8$1;->val$media_no:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v11}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "ad_group_no"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Lcom/mapps/android/share/Track$8$1;->val$pub_no:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/mapps/android/share/Track$8$1;->val$media_no:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 336
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 342
    :cond_1
    const/4 v6, 0x1

    .line 343
    const/4 v5, 0x1

    .line 344
    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataSection;->getListAD()Lcom/mezzo/common/network/data/DataListAD;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataListAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v3

    check-cast v3, Lcom/mezzo/common/network/data/DataAD;

    .line 345
    .local v3, "dataAD":Lcom/mezzo/common/network/data/DataAD;
    sget-object v10, Lcom/mapps/android/share/Track;->SUCCESS:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataAD;->getPkg_target()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 346
    iget-object v10, p0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v10}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v10

    iget-object v11, p0, Lcom/mapps/android/share/Track$8$1;->val$context:Landroid/content/Context;

    const-string v12, "1"

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataAD;->getPkg_target_list()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/mapps/android/share/Track;->selectPTaget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 349
    :cond_2
    sget-object v10, Lcom/mapps/android/share/Track;->SUCCESS:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataAD;->getPkg_filter()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 350
    iget-object v10, p0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v10}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v10

    iget-object v11, p0, Lcom/mapps/android/share/Track$8$1;->val$context:Landroid/content/Context;

    const-string v12, "0"

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataAD;->getPkg_filter_list()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/mapps/android/share/Track;->selectPTaget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 352
    :cond_3
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 353
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataAD;->getAd_group_no()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "$"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ad_group_no : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 360
    .end local v3    # "dataAD":Lcom/mezzo/common/network/data/DataAD;
    :cond_5
    iget-object v10, p0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v10}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v10

    iget-object v11, p0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ad_group_no"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/mapps/android/share/Track$8$1;->val$pub_no:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mapps/android/share/Track$8$1;->val$media_no:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v2}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 368
    .end local v0    # "adCount":I
    .end local v1    # "adLen":I
    .end local v4    # "dataSection":Lcom/mezzo/common/network/data/DataSection;
    :cond_6
    iget-object v10, p0, Lcom/mapps/android/share/Track$8$1;->this$1:Lcom/mapps/android/share/Track$8;

    invoke-static {v10}, Lcom/mapps/android/share/Track$8;->access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;

    move-result-object v10

    iget-object v11, p0, Lcom/mapps/android/share/Track$8$1;->val$ctx:Landroid/content/Context;

    const-string/jumbo v12, "pkg_flag"

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/mapps/android/share/Track;->setAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method
