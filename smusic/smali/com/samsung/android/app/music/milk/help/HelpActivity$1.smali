.class Lcom/samsung/android/app/music/milk/help/HelpActivity$1;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/help/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/help/HelpActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/help/HelpActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/help/HelpActivity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/help/HelpActivity$1;->this$0:Lcom/samsung/android/app/music/milk/help/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 50
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/help/HelpActivity$1;->this$0:Lcom/samsung/android/app/music/milk/help/HelpActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/help/HelpActivity$1;->this$0:Lcom/samsung/android/app/music/milk/help/HelpActivity;

    const-class v3, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/help/HelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/help/HelpActivity$1;->this$0:Lcom/samsung/android/app/music/milk/help/HelpActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/help/MuseUtils;->launchMUSE(Landroid/content/Context;I)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
