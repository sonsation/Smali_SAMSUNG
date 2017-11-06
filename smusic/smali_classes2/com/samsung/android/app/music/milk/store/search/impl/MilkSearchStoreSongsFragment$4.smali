.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;
.super Ljava/lang/Object;
.source "MilkSearchStoreSongsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->createAdapter()Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectAllModeChanged(Z)V
    .locals 11
    .param p1, "selectedAll"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 286
    if-eqz p1, :cond_1

    .line 287
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iget-object v7, v7, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mActionMode:Landroid/view/ActionMode;

    .line 288
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040125

    .line 289
    invoke-virtual {v5, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 290
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f12037b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 291
    .local v0, "cb":Landroid/widget/CheckBox;
    sget-boolean v5, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->ROUND_CHECK_BOX:Z

    if-eqz v5, :cond_0

    .line 292
    const v5, 0x7f020084

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 294
    const v5, 0x7f12037a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 295
    .local v2, "rippleView":Landroid/view/View;
    const v5, 0x7f020250

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 298
    .end local v2    # "rippleView":Landroid/view/View;
    :cond_0
    new-array v3, v9, [[I

    new-array v5, v8, [I

    aput-object v5, v3, v8

    .line 299
    .local v3, "states":[[I
    new-array v1, v9, [I

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f11003f

    invoke-static {v5, v6, v10}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v5

    aput v5, v1, v8

    .line 301
    .local v1, "colors":[I
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 302
    new-instance v5, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$1300(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "onSelectAllModeChanged"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iget-object v5, v5, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v5, v4}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 321
    .end local v0    # "cb":Landroid/widget/CheckBox;
    .end local v1    # "colors":[I
    .end local v3    # "states":[[I
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onSelectCountChanged(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$1400(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSelectIndexOnActionMode] count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$1500(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;I)V

    .line 332
    return-void
.end method

.method public onSelectModeChanged(Z)V
    .locals 0
    .param p1, "isSelectMode"    # Z

    .prologue
    .line 326
    return-void
.end method
