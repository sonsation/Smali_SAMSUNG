.class Lcom/android/server/wm/SamsungStartingWindowManager$2;
.super Ljava/lang/Object;
.source "SamsungStartingWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SamsungStartingWindowManager;->clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SamsungStartingWindowManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/SamsungStartingWindowManager;
    .param p2, "val$pkg"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    iput-object p2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 157
    iget-object v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-static {v2}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get4(Lcom/android/server/wm/SamsungStartingWindowManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 160
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->val$pkg:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/android/server/wm/SamsungStartingWindowManager;->-wrap3(Lcom/android/server/wm/SamsungStartingWindowManager;Ljava/lang/String;I)V

    goto :goto_0

    .line 163
    .end local v1    # "userId":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-static {v2}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get5(Lcom/android/server/wm/SamsungStartingWindowManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->val$pkg:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    const-string v2, "SamsungStartingWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CustomStartingWindow pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is removed or replaced. remove CustomLayoutResId for it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->val$pkg:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeCustomLayoutResId(Ljava/lang/String;I)V

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-static {v2}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get3(Lcom/android/server/wm/SamsungStartingWindowManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->val$pkg:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    const-string v2, "SamsungStartingWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CustomStartingWindow pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is removed or replaced. remove CustomReverseLayoutResId for it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->val$pkg:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeCustomLayoutResId(Ljava/lang/String;I)V

    .line 171
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-static {v2}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get2(Lcom/android/server/wm/SamsungStartingWindowManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->val$pkg:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    const-string v2, "SamsungStartingWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CustomStartingWindow pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is removed or replaced. remove CustomKeyguardPreviewResId for it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$2;->val$pkg:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeCustomLayoutResId(Ljava/lang/String;I)V

    .line 156
    :cond_3
    return-void
.end method
