.class Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SeslSupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Landroid/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;Landroid/view/Menu;)V
    .locals 0
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->resetGroup()V

    .line 336
    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1
    .param p1, "shortcutString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 420
    if-nez p1, :cond_0

    .line 423
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 498
    .local p2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 499
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 500
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 501
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 505
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 502
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SeslSupportMenuInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot instantiate class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 428
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemVisible:Z

    .line 429
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemEnabled:Z

    .line 430
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    iget v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemCheckable:I

    if-lt v3, v4, :cond_1

    move v3, v4

    .line 431
    :goto_0
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 432
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    iget v5, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemIconResId:I

    .line 433
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-char v5, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 434
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    iget-char v5, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 435
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 437
    iget v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v3, :cond_0

    .line 438
    iget v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemShowAsAction:I

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 441
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 442
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 430
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 446
    :cond_2
    new-instance v3, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;

    .line 447
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 450
    :cond_3
    instance-of v3, p1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    if-eqz v3, :cond_8

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-object v2, v3

    .line 451
    .local v2, "impl":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :goto_1
    iget v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v5, 0x2

    if-lt v3, v5, :cond_4

    .line 452
    instance-of v3, p1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    if-eqz v3, :cond_4

    move-object v3, p1

    .line 453
    check-cast v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setExclusiveCheckable(Z)V

    .line 457
    :cond_4
    const/4 v1, 0x0

    .line 458
    .local v1, "actionViewSpecified":Z
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 459
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 461
    .local v0, "actionView":Landroid/view/View;
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 462
    const/4 v1, 0x1

    .line 464
    .end local v0    # "actionView":Landroid/view/View;
    :cond_5
    iget v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v3, :cond_6

    .line 465
    if-nez v1, :cond_9

    .line 466
    iget v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 467
    const/4 v1, 0x1

    .line 473
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    if-eqz v3, :cond_7

    .line 474
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 476
    :cond_7
    return-void

    .line 450
    .end local v1    # "actionViewSpecified":Z
    .end local v2    # "impl":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 469
    .restart local v1    # "actionViewSpecified":Z
    .restart local v2    # "impl":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_9
    const-string v3, "SeslSupportMenuInflater"

    const-string v4, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public addItem()V
    .locals 5

    .prologue
    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemAdded:Z

    .line 480
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 481
    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 6

    .prologue
    .line 484
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemAdded:Z

    .line 485
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupId:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemId:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 486
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 487
    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuGroup:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 353
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuGroup_android_id:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupId:I

    .line 354
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuGroup_android_menuCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupCategory:I

    .line 356
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuGroup_android_orderInCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupOrder:I

    .line 357
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuGroup_android_checkableBehavior:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupCheckable:I

    .line 359
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuGroup_android_visible:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupVisible:Z

    .line 360
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuGroup_android_enabled:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupEnabled:Z

    .line 362
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 363
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 369
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem:[I

    invoke-virtual {v4, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 372
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_id:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemId:I

    .line 373
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_menuCategory:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 374
    .local v1, "category":I
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_orderInCategory:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 375
    .local v3, "order":I
    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    const v7, 0xffff

    and-int/2addr v7, v3

    or-int/2addr v4, v7

    iput v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 377
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 378
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_titleCondensed:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 379
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_icon:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemIconResId:I

    .line 380
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_alphabeticShortcut:I

    .line 381
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 382
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_numericShortcut:I

    .line 383
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 384
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_checkable:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 386
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_checkable:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemCheckable:I

    .line 392
    :goto_1
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_checked:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemChecked:Z

    .line 393
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_visible:I

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemVisible:Z

    .line 394
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_enabled:I

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemEnabled:Z

    .line 395
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_showAsAction:I

    const/4 v7, -0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 396
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_onClick:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 397
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_actionLayout:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 398
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_actionViewClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 399
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuItem_android_actionProviderClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 401
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v4, :cond_2

    move v2, v5

    .line 402
    .local v2, "hasActionProvider":Z
    :goto_2
    if-eqz v2, :cond_3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 403
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v4, v5, v7}, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ActionProvider;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    .line 414
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 416
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemAdded:Z

    .line 417
    return-void

    .end local v2    # "hasActionProvider":Z
    :cond_0
    move v4, v6

    .line 386
    goto :goto_0

    .line 390
    :cond_1
    iget v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupCheckable:I

    iput v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemCheckable:I

    goto :goto_1

    :cond_2
    move v2, v6

    .line 401
    goto :goto_2

    .line 407
    .restart local v2    # "hasActionProvider":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 408
    const-string v4, "SeslSupportMenuInflater"

    const-string v5, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    goto :goto_3
.end method

.method public resetGroup()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 339
    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupId:I

    .line 340
    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupCategory:I

    .line 341
    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupOrder:I

    .line 342
    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupCheckable:I

    .line 343
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupVisible:Z

    .line 344
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater$MenuState;->groupEnabled:Z

    .line 345
    return-void
.end method
