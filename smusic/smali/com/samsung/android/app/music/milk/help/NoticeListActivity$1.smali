.class Lcom/samsung/android/app/music/milk/help/NoticeListActivity$1;
.super Ljava/lang/Object;
.source "NoticeListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/help/NoticeListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/help/NoticeListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/help/NoticeListActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity$1;->this$0:Lcom/samsung/android/app/music/milk/help/NoticeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity$1;->this$0:Lcom/samsung/android/app/music/milk/help/NoticeListActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->access$000(Lcom/samsung/android/app/music/milk/help/NoticeListActivity;)Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;

    .line 103
    .local v1, "item":Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    const-string/jumbo v2, "web_url"

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string/jumbo v2, "web_for_notice"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity$1;->this$0:Lcom/samsung/android/app/music/milk/help/NoticeListActivity;

    const-class v3, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 109
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity$1;->this$0:Lcom/samsung/android/app/music/milk/help/NoticeListActivity;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method
