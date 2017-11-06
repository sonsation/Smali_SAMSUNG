.class Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;
.super Ljava/lang/Object;
.source "RadioResetCustomizeDialDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->initLayout(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->getItem(I)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;

    move-result-object v0

    .line 182
    .local v0, "item":Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;
    if-eqz v0, :cond_0

    .line 185
    iget-boolean v2, v0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mIsVisible:Z

    if-eqz v2, :cond_2

    .line 186
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->getItem(I)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;

    move-result-object v2

    iput-boolean v6, v2, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mIsVisible:Z

    .line 187
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$210(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)I

    .line 193
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "901"

    const-string v4, "9051"

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mName:Ljava/lang/String;

    .line 194
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    const-string v2, "RadioResetCustomizeDialDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onItemClick : mWholeGenres = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$300(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNumGenresSelected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .line 199
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$200(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$200(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$400(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)I

    move-result v3

    if-le v2, v3, :cond_4

    .line 201
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->getItem(I)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;

    move-result-object v2

    iput-boolean v6, v2, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mIsVisible:Z

    .line 202
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$210(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)I

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$300(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    const v3, 0x7f0a035f

    .line 206
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .line 207
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$400(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 205
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 213
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$500(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v7}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 221
    .end local v1    # "msg":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->notifyDataSetChanged()V

    .line 223
    .end local v0    # "item":Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;
    :cond_1
    return-void

    .line 189
    .restart local v0    # "item":Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->getItem(I)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;

    move-result-object v2

    iput-boolean v7, v2, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mIsVisible:Z

    .line 190
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$208(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)I

    goto/16 :goto_0

    .line 209
    .restart local v1    # "msg":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    const v3, 0x7f0a0360

    .line 210
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .line 211
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$400(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 209
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 214
    .end local v1    # "msg":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$300(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$200(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$400(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)I

    move-result v3

    if-le v2, v3, :cond_5

    .line 215
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$600(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 216
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$700(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 218
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$600(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 219
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$700(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method
