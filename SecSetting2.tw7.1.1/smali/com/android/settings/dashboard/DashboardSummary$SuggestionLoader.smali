.class Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;
.super Landroid/os/AsyncTask;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/settingslib/drawer/Tile;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 366
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 367
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 368
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 369
    return-object v8

    .line 370
    :cond_0
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v7}, Lcom/android/settings/dashboard/DashboardSummary;->-get1(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settingslib/SuggestionParser;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settingslib/SuggestionParser;->semGetSuggestions()Ljava/util/ArrayList;

    move-result-object v6

    .line 372
    .local v6, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;>;"
    const-string/jumbo v7, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "suggestions.size() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 375
    const-string/jumbo v8, "DashboardSummary"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "suggestions.get(i).size() : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 377
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    .line 378
    .local v5, "suggestion":Lcom/android/settingslib/drawer/Tile;
    invoke-static {v0, v5}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v7}, Lcom/android/settings/dashboard/DashboardSummary;->-get2(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/SuggestionsChecks;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/settings/dashboard/SuggestionsChecks;->isSuggestionComplete(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 381
    const-string/jumbo v7, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSuggestionComplete : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    add-int/lit8 v4, v3, -0x1

    .end local v3    # "j":I
    .local v4, "j":I
    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v3, v4

    .line 387
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :cond_1
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v7}, Lcom/android/settings/dashboard/DashboardSummary;->-get3(Lcom/android/settings/dashboard/DashboardSummary;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 388
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v7}, Lcom/android/settings/dashboard/DashboardSummary;->-get3(Lcom/android/settings/dashboard/DashboardSummary;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    const/16 v7, 0x180

    .line 389
    invoke-static {v0, v7, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 376
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 374
    .end local v2    # "id":Ljava/lang/String;
    .end local v5    # "suggestion":Lcom/android/settingslib/drawer/Tile;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 396
    .end local v3    # "j":I
    :cond_4
    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "suggestions"    # Ljava/lang/Object;

    .prologue
    .line 400
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "suggestions":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;>;"
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 402
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 403
    return-void

    .line 406
    :cond_0
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v1

    .line 407
    .local v1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardSummary;->-get0(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategoriesAndSuggestions(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 400
    return-void
.end method
