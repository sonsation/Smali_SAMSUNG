.class Lcom/samsung/android/app/music/milk/radio/DialFragment$2;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/DialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 180
    const-string v1, "DialFragment"

    const-string/jumbo v2, "setting activity listener"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$000(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/common/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$000(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    return-void
.end method
