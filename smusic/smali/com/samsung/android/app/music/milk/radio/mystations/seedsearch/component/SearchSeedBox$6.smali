.class Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;
.super Ljava/lang/Object;
.source "SearchSeedBox.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->initSearchSeedText(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 340
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "after_text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$1000(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .line 343
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$1000(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a03f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    .line 344
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 342
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$1000(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v5}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 347
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p1, v6, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 348
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v2, v7}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$902(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;Z)Z

    .line 352
    .end local v1    # "msg":Ljava/lang/String;
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v2, v5}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$902(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;Z)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v1, 0x0

    .line 333
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    if-lez p4, :cond_0

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v0, v1, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$700(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;ZZ)V

    .line 336
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$400(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$402(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;Z)Z

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->onSearchBoxTextChanged(Ljava/lang/CharSequence;III)V

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$600(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "searchText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 291
    const-string v1, "SearchSeedBox"

    const-string/jumbo v2, "onTextChanged : searchText is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1, v4, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$700(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;ZZ)V

    .line 293
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->showLoading(Z)V

    goto :goto_0

    .line 299
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$800(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$900(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 300
    :cond_4
    const-string v1, "SearchSeedBox"

    const-string/jumbo v2, "onTextChanged : Sameword or reached Max Size"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 305
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->isSearchRequesting()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 306
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->showLoading(Z)V

    .line 309
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 310
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->reqSeedSearch(Ljava/lang/String;Z)V

    .line 313
    :cond_7
    const-string v1, "SearchSeedBox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTextChanged : Length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 315
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1, v5, v5}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$700(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;ZZ)V

    .line 316
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->isSearchRequesting()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 318
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->showLoading(Z)V

    goto/16 :goto_0

    .line 320
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->showLoading(Z)V

    goto/16 :goto_0

    .line 324
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1, v4, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$700(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;ZZ)V

    .line 325
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->showLoading(Z)V

    goto/16 :goto_0
.end method
