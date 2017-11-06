.class Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment$1;
.super Ljava/lang/Object;
.source "BasePlayerDetailsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment$1;->this$0:Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLargerFontChanged(I)V
    .locals 5
    .param p1, "fontResId"    # I

    .prologue
    .line 55
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 56
    const p1, 0x7f0d01c2

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment$1;->this$0:Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->access$002(Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;I)I

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment$1;->this$0:Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->access$100(Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    .local v0, "textView":Landroid/widget/TextView;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment$1;->this$0:Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;

    .line 61
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment$1;->this$0:Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->access$000(Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 60
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 63
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method
