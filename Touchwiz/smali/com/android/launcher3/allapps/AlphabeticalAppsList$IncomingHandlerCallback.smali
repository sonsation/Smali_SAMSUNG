.class Lcom/android/launcher3/allapps/AlphabeticalAppsList$IncomingHandlerCallback;
.super Ljava/lang/Object;
.source "AlphabeticalAppsList.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AlphabeticalAppsList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$IncomingHandlerCallback;->this$0:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 875
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 912
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v8, 0x1

    :cond_1
    return v8

    .line 877
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "size"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 878
    .local v6, "size":I
    const/4 v9, 0x3

    if-le v6, v9, :cond_2

    const/4 v6, 0x3

    .line 879
    :cond_2
    iget-object v9, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$IncomingHandlerCallback;->this$0:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget v9, v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->called:I

    if-eq v6, v9, :cond_1

    .line 880
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    .line 881
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "title"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 882
    .local v7, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "ID"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "ID":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$IncomingHandlerCallback;->this$0:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v9, v0, v8}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->isAppInstalled(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 884
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "seller"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 885
    .local v5, "seller":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "price"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 886
    .local v3, "price":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "rating"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 888
    .local v4, "rating":Ljava/lang/String;
    new-instance v2, Lcom/android/launcher3/allapps/ItemDetails;

    invoke-direct {v2}, Lcom/android/launcher3/allapps/ItemDetails;-><init>()V

    .line 889
    .local v2, "item":Lcom/android/launcher3/allapps/ItemDetails;
    invoke-virtual {v2, v7}, Lcom/android/launcher3/allapps/ItemDetails;->setName(Ljava/lang/String;)V

    .line 890
    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/ItemDetails;->setPkgName(Ljava/lang/String;)V

    .line 891
    invoke-virtual {v2, v1}, Lcom/android/launcher3/allapps/ItemDetails;->setIconImage(Landroid/graphics/Bitmap;)V

    .line 892
    invoke-virtual {v2, v5}, Lcom/android/launcher3/allapps/ItemDetails;->setItemSeller(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/ItemDetails;->setPrice(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v2, v4}, Lcom/android/launcher3/allapps/ItemDetails;->setRating(Ljava/lang/String;)V

    .line 896
    iget-object v8, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$IncomingHandlerCallback;->this$0:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-static {v8}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->access$000(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    iget-object v8, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$IncomingHandlerCallback;->this$0:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget v9, v8, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->called:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->called:I

    goto :goto_0

    .line 901
    .end local v0    # "ID":Ljava/lang/String;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "item":Lcom/android/launcher3/allapps/ItemDetails;
    .end local v3    # "price":Ljava/lang/String;
    .end local v4    # "rating":Ljava/lang/String;
    .end local v5    # "seller":Ljava/lang/String;
    .end local v6    # "size":I
    .end local v7    # "title":Ljava/lang/String;
    :pswitch_2
    iget-object v8, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$IncomingHandlerCallback;->this$0:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-static {v8}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->access$000(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 902
    iget-object v8, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$IncomingHandlerCallback;->this$0:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-static {v8}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->access$100(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    goto/16 :goto_0

    .line 907
    :pswitch_3
    const-string v8, "AlphabeticalAppsList"

    const-string v9, "NETWORK_NOT_CONNECTED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
