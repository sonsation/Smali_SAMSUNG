.class Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareActivityChooserModelPolicy;
.super Ljava/lang/Object;
.source "SeslShareActionProvider.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$OnChooseActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareActivityChooserModelPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    return-void
.end method


# virtual methods
.method public onChooseActivity(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "host"    # Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mOnShareTargetSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$OnShareTargetSelectedListener;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mOnShareTargetSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$OnShareTargetSelectedListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$OnShareTargetSelectedListener;->onShareTargetSelected(Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;Landroid/content/Intent;)Z

    .line 404
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
