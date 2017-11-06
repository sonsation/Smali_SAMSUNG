.class Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment$1;
.super Ljava/lang/Object;
.source "TabHostFragment.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->initTabItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->access$100(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->access$400(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTabUnselected : tab does not initialized yet"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->access$500(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabReselected : pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->dispatchTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->access$000(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabSelected : pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 217
    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->access$100(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->access$200(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTabUnselected : tab does not initialized yet"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->access$300(Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabUnselected : pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostFragment;->dispatchTabUnSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0
.end method
