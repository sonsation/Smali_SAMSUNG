.class Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;
.super Ljava/lang/Object;
.source "HwrLanguagePackManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateLanguageManagerListener"
.end annotation


# instance fields
.field private mListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;
    .param p2, "x1"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$1;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V

    return-void
.end method


# virtual methods
.method addListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public onComplete(I)V
    .locals 11
    .param p1, "status"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v3, 0x0

    .line 85
    if-nez p1, :cond_0

    .line 94
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update complete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v6}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    .line 97
    .local v2, "lm":Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;
    invoke-interface {v2}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->getAvailableLanguage()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_2

    .line 106
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 117
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    if-nez v3, :cond_6

    .line 126
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$402(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 129
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 131
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 132
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v3, v10}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$202(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;I)I

    .line 133
    return-void

    .line 86
    .end local v2    # "lm":Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 87
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update failure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 91
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v3, v10}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$202(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;I)I

    .line 92
    return-void

    .line 87
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    .line 88
    .local v1, "listener":Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;
    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    goto :goto_3

    .line 97
    .end local v1    # "listener":Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;
    .restart local v2    # "lm":Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;
    :cond_2
    aget-object v0, v5, v4

    .line 98
    .local v0, "language":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 103
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->add(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    .line 97
    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_0

    .line 99
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    move-result-object v9

    invoke-direct {v8, v3, v9}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$500()Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->setSpenLanguagePackManager(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V

    goto :goto_4

    .line 107
    .end local v0    # "language":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$208(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    .line 108
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_5

    .line 111
    :goto_5
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v4}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$600()Z

    move-result v4

    invoke-interface {v3, p0, v4}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V

    .line 112
    return-void

    .line 109
    :cond_5
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update language list progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 118
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1

    .line 129
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    .line 130
    .restart local v1    # "listener":Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;
    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    goto/16 :goto_2
.end method
