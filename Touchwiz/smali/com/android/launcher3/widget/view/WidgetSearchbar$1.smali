.class Lcom/android/launcher3/widget/view/WidgetSearchbar$1;
.super Ljava/lang/Object;
.source "WidgetSearchbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/view/WidgetSearchbar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/view/WidgetSearchbar;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$1;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$1;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x12d

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/Utilities;->startVoiceRecognitionActivity(Landroid/content/Context;Ljava/lang/String;I)V

    .line 160
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$1;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$1;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    .line 161
    invoke-virtual {v3}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090196

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method
