.class Lcom/android/launcher3/allapps/view/AppsSearchBar$3;
.super Ljava/lang/Object;
.source "AppsSearchBar.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/view/AppsSearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v2, 0x7f0901b1

    .line 303
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f110120

    if-ne v0, v1, :cond_0

    .line 304
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .line 305
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->access$300(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->chooseViewType()V

    .line 326
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 307
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f110124

    if-ne v0, v1, :cond_1

    .line 308
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .line 309
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09011a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->access$300(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->startContactUs()V

    goto :goto_0

    .line 311
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f110121

    if-ne v0, v1, :cond_2

    .line 312
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .line 313
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->access$300(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->prepareTidedUpPages()V

    goto :goto_0

    .line 315
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f110122

    if-ne v0, v1, :cond_3

    .line 316
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .line 317
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090120

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->access$300(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->startHomeSetting()V

    goto/16 :goto_0

    .line 319
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f110123

    if-ne v0, v1, :cond_4

    .line 320
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->access$300(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->startGalaxyEssentials()V

    .line 321
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .line 322
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 324
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
