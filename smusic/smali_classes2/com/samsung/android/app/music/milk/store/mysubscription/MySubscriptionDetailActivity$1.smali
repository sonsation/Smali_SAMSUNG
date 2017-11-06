.class Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$1;
.super Ljava/lang/Object;
.source "MySubscriptionDetailActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const v0, 0x7f12002e

    if-ne p1, v0, :cond_0

    .line 77
    const-string v0, "MySubscriptionDetailActivity"

    const-string v1, "onCreateLoader milk_subscription_detail_loader "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v7, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionQueryArgs;

    .line 80
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Subscriptions;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "orderId"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    .line 81
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionQueryArgs;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v7, "query":Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionQueryArgs;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v7, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionQueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, v7, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionQueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, v7, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionQueryArgs;->selection:Ljava/lang/String;

    iget-object v5, v7, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionQueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v7, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionQueryArgs;->orderBy:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 86
    .end local v7    # "query":Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionQueryArgs;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loader id not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 92
    .local v0, "id":I
    const-string v1, "MySubscriptionDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadFinished id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const v1, 0x7f12002e

    if-ne v0, v1, :cond_1

    .line 95
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 96
    :cond_0
    const-string v1, "MySubscriptionDetailActivity"

    const-string v2, "fail to get cursor"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    const-string v2, "productId"

    .line 100
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 99
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->access$102(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->access$200(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;)Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->updateSubscription(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 109
    .local v0, "id":I
    const-string v1, "MySubscriptionDetailActivity"

    const-string v2, "onLoaderReset"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const v1, 0x7f12002e

    if-ne v0, v1, :cond_0

    .line 113
    :cond_0
    return-void
.end method
