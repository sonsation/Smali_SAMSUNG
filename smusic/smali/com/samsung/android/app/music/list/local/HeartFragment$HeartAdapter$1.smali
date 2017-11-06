.class Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;
.super Ljava/lang/Object;
.source "HeartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->onBindViewHolderPlay(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

.field final synthetic val$holder:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;->val$holder:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1109
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    invoke-static {v4}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->access$1700(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "EIHT"

    const-string v6, "Play icon"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    invoke-static {v4}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->access$1800(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "HTIT"

    const-string v6, "Touch play button"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    invoke-static {v4}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->access$1900(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;->val$holder:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;

    iget-object v5, v5, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 1116
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 1117
    .local v2, "position":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1136
    :goto_0
    return-void

    .line 1120
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1121
    .local v1, "listType":I
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v0

    .line 1122
    .local v0, "keyword":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getSubCategory(I)I

    move-result v3

    .line 1123
    .local v3, "subCategoryType":I
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->access$2000(ILjava/lang/String;)V

    .line 1124
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v4, :cond_3

    .line 1125
    const/16 v4, 0x54

    if-eq v1, v4, :cond_1

    const/16 v4, 0x55

    if-eq v1, v4, :cond_1

    const/16 v4, 0x56

    if-ne v1, v4, :cond_2

    .line 1128
    :cond_1
    new-instance v4, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    invoke-static {v5}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->access$2100(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;)Landroid/app/Fragment;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0, v1}, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    .line 1129
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1131
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    invoke-static {v5}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->access$2200(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5, v0, v1, v3}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->access$2300(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;Landroid/content/Context;Ljava/lang/String;II)I

    goto :goto_0

    .line 1134
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    invoke-static {v5}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->access$2400(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5, v0, v1, v3}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->access$2300(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;Landroid/content/Context;Ljava/lang/String;II)I

    goto :goto_0
.end method
