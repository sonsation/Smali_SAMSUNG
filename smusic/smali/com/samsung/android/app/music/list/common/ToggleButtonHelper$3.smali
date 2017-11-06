.class Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$3;
.super Ljava/lang/Object;
.source "ToggleButtonHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;-><init>(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$3;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$3;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$700(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$3;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$800(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$3;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$800(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$3;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$702(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;I)I

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$3;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$900(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)V

    goto :goto_0
.end method
