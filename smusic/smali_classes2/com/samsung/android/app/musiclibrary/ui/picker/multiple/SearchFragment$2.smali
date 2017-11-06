.class Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->isResumed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$200(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 237
    .local v0, "checkSelectAll":Z
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    .line 238
    .local v1, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    if-nez v1, :cond_2

    .line 239
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$302(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;I)I

    .line 240
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$400(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;Z)V

    goto :goto_0

    .end local v0    # "checkSelectAll":Z
    .end local v1    # "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    :cond_1
    move v0, v2

    .line 235
    goto :goto_1

    .line 244
    .restart local v0    # "checkSelectAll":Z
    .restart local v1    # "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->setItemCheckedAll(Z)V

    .line 245
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getScreenId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1021"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
