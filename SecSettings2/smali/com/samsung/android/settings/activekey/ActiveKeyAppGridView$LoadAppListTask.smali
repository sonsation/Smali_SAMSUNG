.class Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;
.super Landroid/os/AsyncTask;
.source "ActiveKeyAppGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAppListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    return-void
.end method


# virtual methods
.method protected add()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-get1(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-get1(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->clear()V

    .line 442
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-get1(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-wrap0(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->addAll(Ljava/util/Collection;)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-get1(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->notifyDataSetChanged()V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-wrap2(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    .line 439
    return-void
.end method

.method protected clear()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-wrap2(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    .line 433
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-get1(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-get1(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->clear()V

    .line 435
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-get1(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->notifyDataSetChanged()V

    .line 431
    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 426
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-wrap0(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 397
    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-wrap2(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 402
    iget-object v6, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    new-instance v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 403
    const v3, 0x7f040171

    const/4 v4, 0x0

    move-object v5, p1

    .line 402
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;Landroid/content/Context;IILjava/util/List;)V

    invoke-static {v6, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-set0(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    .line 404
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-get0(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-get1(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 405
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-get3(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-get3(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->clear()V

    .line 397
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 414
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 415
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-wrap1(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    .line 412
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 419
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "values":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 419
    return-void
.end method
