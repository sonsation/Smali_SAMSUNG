.class Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;
.super Ljava/lang/Object;
.source "ListMenuGroup.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/ListMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommonMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;[J)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;
    .param p1, "x1"    # [J

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuAddTo([J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;[J)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;
    .param p1, "x1"    # [J

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuAddToImmediate([J)V

    return-void
.end method

.method private performMenuAddShortcutHomeScreen()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/common/util/ShortCutUtils$ShortcutAddable;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/util/ShortCutUtils$ShortcutAddable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/util/ShortCutUtils$ShortcutAddable;->addShortcut()V

    .line 415
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1300(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V

    .line 416
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const-string v1, "0032"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$800(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;)V

    .line 418
    :cond_0
    return-void
.end method

.method private performMenuAddShortcutHomeScreenList()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 431
    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->getListType()I

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/activity/AddToShortcutActivity;->startActivity(Landroid/app/Activity;I)V

    .line 432
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1300(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V

    .line 433
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const-string v1, "0032"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$800(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method private performMenuAddTo()V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const-string v1, "1023"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 353
    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v2

    int-to-long v2, v2

    .line 352
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$900(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;J)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuAddTo([J)V

    .line 355
    return-void
.end method

.method private performMenuAddTo([J)V
    .locals 4
    .param p1, "checkedItemAudioIds"    # [J

    .prologue
    .line 370
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 372
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "MaxExceed"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1100(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuAddToImmediate([J)V

    .line 397
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1300(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

    if-eqz v1, :cond_3

    .line 379
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 380
    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;->getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    .line 381
    .local v0, "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    if-eqz v0, :cond_2

    .line 382
    new-instance v1, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu$2;-><init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;[J)V

    .line 383
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->addCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 391
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuAddToImmediate([J)V

    goto :goto_1

    .line 394
    .end local v0    # "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuAddToImmediate([J)V

    goto :goto_1
.end method

.method private performMenuAddToAsync()V
    .locals 6

    .prologue
    .line 358
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const-string v2, "1023"

    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 359
    invoke-static {v3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v3

    int-to-long v4, v3

    .line 358
    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$900(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;J)V

    .line 360
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu$1;-><init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;)V

    .line 366
    .local v0, "checkedItemIdListener":Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIdsAsync(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V

    .line 367
    return-void
.end method

.method private performMenuAddToImmediate([J)V
    .locals 4
    .param p1, "checkedItemAudioIds"    # [J

    .prologue
    .line 401
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->startActivity(Landroid/app/Activity;[JLandroid/os/Bundle;)V

    .line 410
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const v1, 0x7f0a020d

    .line 407
    .local v1, "stringResId":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 408
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 404
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "stringResId":I
    :cond_1
    const v1, 0x7f0a0214

    goto :goto_1
.end method

.method private performMenuAddTracks()V
    .locals 5

    .prologue
    .line 329
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_1

    .line 331
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getValidItemCount()I

    move-result v1

    .line 332
    .local v1, "itemCount":I
    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_0

    .line 333
    new-instance v2, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;

    invoke-direct {v2}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 334
    invoke-static {v3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "MaxExceed"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 342
    .end local v1    # "itemCount":I
    :goto_0
    return-void

    .line 337
    .restart local v1    # "itemCount":I
    :cond_0
    const-string v2, "extra_item_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    .end local v1    # "itemCount":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 341
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const-string v3, "1161"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$800(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private performMenuContactUs()V
    .locals 4

    .prologue
    .line 437
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/help/ContactUsHelper;->launchContactUs(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 439
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 440
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 441
    const-string/jumbo v1, "web_url"

    const-string v2, "http://samsungmusic.kr/html/ssmusic_qa_bridge.php"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string/jumbo v1, "web_for_notice"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 445
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "0004"

    .line 446
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method private performMenuDownload()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/download/Downloadable;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/download/Downloadable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/download/Downloadable;->download()V

    .line 423
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const-string v1, "1187"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$800(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1300(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "MDL2"

    const-string v2, "List"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_0
    return-void
.end method

.method private performMenuHelp()V
    .locals 4

    .prologue
    .line 450
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/samsung/android/app/music/milk/help/HelpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 451
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "0055"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private performMenuSelectMode()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->startActionMode()V

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "SELE"

    const-string v2, "More Option Select"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const-string v1, "1049"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$800(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method private updateMenuVisibleAddShortcutOnHomeScreen(Landroid/view/Menu;I)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    .line 299
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 300
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 303
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_INSTALL_SHORTCUT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 304
    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 305
    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isAndroidForWorkMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isUPSMMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 303
    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 305
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateMenuVisibleAddToBottomBar(Landroid/view/Menu;I)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    .line 309
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 310
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateMenuVisibleAddTracks(Landroid/view/Menu;I)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    .line 269
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 270
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v1}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->getLocalTracksCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateMenuVisibleContactUs(Landroid/view/Menu;I)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    .line 279
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 280
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 283
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_1

    .line 284
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/help/ContactUsHelper;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateMenuVisibleDownloadBottomBar(Landroid/view/Menu;I)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 317
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 318
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 321
    :cond_0
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_2

    .line 322
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 324
    :cond_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateMenuVisibleHelp(Landroid/view/Menu;I)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    .line 291
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 292
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateMenuVisibleLaunchEditMode(Landroid/view/Menu;I)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    .line 261
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 262
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$300(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateMenuVisibleSearch(Landroid/view/Menu;I)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    .line 245
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 246
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 250
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_1

    const v1, 0x7f120019

    .line 251
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 252
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 255
    :cond_1
    const v1, 0x7f0201bf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 188
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 206
    const/4 v0, 0x1

    .line 207
    .local v0, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 238
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    .line 209
    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuSelectMode()V

    goto :goto_0

    .line 212
    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuAddTracks()V

    goto :goto_0

    .line 215
    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuContactUs()V

    goto :goto_0

    .line 218
    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuHelp()V

    goto :goto_0

    .line 223
    :sswitch_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuAddTo()V

    goto :goto_0

    .line 226
    :sswitch_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuAddToAsync()V

    goto :goto_0

    .line 229
    :sswitch_6
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuAddShortcutHomeScreenList()V

    goto :goto_0

    .line 232
    :sswitch_7
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuAddShortcutHomeScreen()V

    goto :goto_0

    .line 235
    :sswitch_8
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuDownload()V

    goto :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x7f12059d -> :sswitch_4
        0x7f12059f -> :sswitch_8
        0x7f1205ad -> :sswitch_4
        0x7f1205b0 -> :sswitch_5
        0x7f1205b1 -> :sswitch_7
        0x7f1205b2 -> :sswitch_1
        0x7f1205b4 -> :sswitch_0
        0x7f1205c7 -> :sswitch_3
        0x7f1205c8 -> :sswitch_2
        0x7f1205cb -> :sswitch_6
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 192
    const v0, 0x7f1205c6

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->updateMenuVisibleSearch(Landroid/view/Menu;I)V

    .line 193
    const v0, 0x7f1205b4

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->updateMenuVisibleLaunchEditMode(Landroid/view/Menu;I)V

    .line 194
    const v0, 0x7f1205b2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->updateMenuVisibleAddTracks(Landroid/view/Menu;I)V

    .line 195
    const v0, 0x7f12059d

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->updateMenuVisibleAddToBottomBar(Landroid/view/Menu;I)V

    .line 196
    const v0, 0x7f1205b0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->updateMenuVisibleAddToBottomBar(Landroid/view/Menu;I)V

    .line 197
    const v0, 0x7f1205c8

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->updateMenuVisibleContactUs(Landroid/view/Menu;I)V

    .line 198
    const v0, 0x7f1205c7

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->updateMenuVisibleHelp(Landroid/view/Menu;I)V

    .line 199
    const v0, 0x7f1205cb

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->updateMenuVisibleAddShortcutOnHomeScreen(Landroid/view/Menu;I)V

    .line 200
    const v0, 0x7f1205b1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->updateMenuVisibleAddShortcutOnHomeScreen(Landroid/view/Menu;I)V

    .line 201
    const v0, 0x7f12059f

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->updateMenuVisibleDownloadBottomBar(Landroid/view/Menu;I)V

    .line 202
    return-void
.end method
