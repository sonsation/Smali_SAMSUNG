.class public final Lcom/android/systemui/statusbar/KeyboardShortcuts;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyboardShortcuts$1;,
        Lcom/android/systemui/statusbar/KeyboardShortcuts$2;,
        Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mDeskMode:Z

.field private static sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mApplicationItemsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDialogCloseListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mKeyboardShortcutsDialog:Landroid/app/Dialog;

.field private final mModifierDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mModifierNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mSpecialCharacterDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecialCharacterNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/view/KeyboardShortcutGroup;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getDefaultApplicationShortcuts()Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/view/KeyboardShortcutGroup;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getSystemShortcuts()Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismissKeyboardShortcuts()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V
    .locals 0
    .param p1, "keyboardShortcutGroups"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->handleShowKeyboardShortcuts(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V
    .locals 0
    .param p1, "keyboardShortcutGroups"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcutsDialog(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDeskMode:Z

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDialogCloseListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    .line 97
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mApplicationItemsComparator:Ljava/util/Comparator;

    .line 123
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030237

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 124
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->loadResources(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method public static dismiss()V
    .locals 2

    .prologue
    .line 155
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismissKeyboardShortcuts()V

    .line 158
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 154
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dismissKeyboardShortcuts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 391
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 388
    :cond_0
    return-void
.end method

.method private getDefaultApplicationShortcuts()Landroid/view/KeyboardShortcutGroup;
    .locals 23

    .prologue
    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getUserId()I

    move-result v18

    .line 435
    .local v18, "userId":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v15, "keyboardShortcutInfoAppItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutInfo;>;"
    new-instance v8, Lcom/android/internal/app/AssistUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    .line 454
    .local v8, "assistUtils":Lcom/android/internal/app/AssistUtils;
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v5

    .line 455
    .local v5, "assistComponent":Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 456
    .local v7, "assistPackageInfo":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_7

    .line 457
    sget-object v19, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "assistComponent is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .end local v7    # "assistPackageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v7, :cond_0

    .line 469
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 470
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v20, v0

    .line 468
    invoke-static/range {v19 .. v20}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    .line 472
    .local v6, "assistIcon":Landroid/graphics/drawable/Icon;
    new-instance v19, Landroid/view/KeyboardShortcutInfo;

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0f0585

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 475
    const/16 v21, 0x0

    .line 476
    const/high16 v22, 0x10000

    .line 472
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    .end local v6    # "assistIcon":Landroid/graphics/drawable/Icon;
    :cond_0
    const-string/jumbo v19, "android.intent.category.APP_BROWSER"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    .line 482
    .local v9, "browserIcon":Landroid/graphics/drawable/Icon;
    if-eqz v9, :cond_1

    .line 483
    new-instance v19, Landroid/view/KeyboardShortcutInfo;

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0f0586

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 486
    const/16 v21, 0x1e

    .line 487
    const/high16 v22, 0x10000

    .line 483
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_1
    const-string/jumbo v19, "android.intent.category.APP_CONTACTS"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v11

    .line 492
    .local v11, "contactsIcon":Landroid/graphics/drawable/Icon;
    if-eqz v11, :cond_2

    .line 493
    new-instance v19, Landroid/view/KeyboardShortcutInfo;

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0f0587

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 496
    const/16 v21, 0x1f

    .line 497
    const/high16 v22, 0x10000

    .line 493
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v11, v2, v3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_2
    const-string/jumbo v19, "android.intent.category.APP_EMAIL"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v13

    .line 502
    .local v13, "emailIcon":Landroid/graphics/drawable/Icon;
    if-eqz v13, :cond_3

    .line 503
    new-instance v19, Landroid/view/KeyboardShortcutInfo;

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0f0588

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 506
    const/16 v21, 0x21

    .line 507
    const/high16 v22, 0x10000

    .line 503
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v13, v2, v3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_3
    const-string/jumbo v19, "android.intent.category.APP_MESSAGING"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v16

    .line 514
    .local v16, "messagingIcon":Landroid/graphics/drawable/Icon;
    if-eqz v16, :cond_4

    .line 515
    new-instance v19, Landroid/view/KeyboardShortcutInfo;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0f0589

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 518
    const/16 v21, 0x2f

    .line 519
    const/high16 v22, 0x10000

    .line 515
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_4
    const-string/jumbo v19, "android.intent.category.APP_MUSIC"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v17

    .line 533
    .local v17, "musicIcon":Landroid/graphics/drawable/Icon;
    if-eqz v17, :cond_5

    .line 534
    new-instance v19, Landroid/view/KeyboardShortcutInfo;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0f058a

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 537
    const/16 v21, 0x2c

    .line 538
    const/high16 v22, 0x10000

    .line 534
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_5
    const-string/jumbo v19, "android.intent.category.APP_CALENDAR"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v10

    .line 544
    .local v10, "calendarIcon":Landroid/graphics/drawable/Icon;
    if-eqz v10, :cond_6

    .line 545
    new-instance v19, Landroid/view/KeyboardShortcutInfo;

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0f058c

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 548
    const/16 v21, 0x28

    .line 549
    const/high16 v22, 0x10000

    .line 545
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v10, v2, v3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_6
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    .line 554
    .local v14, "itemsSize":I
    if-nez v14, :cond_8

    .line 555
    const/16 v19, 0x0

    return-object v19

    .line 460
    .end local v9    # "browserIcon":Landroid/graphics/drawable/Icon;
    .end local v10    # "calendarIcon":Landroid/graphics/drawable/Icon;
    .end local v11    # "contactsIcon":Landroid/graphics/drawable/Icon;
    .end local v13    # "emailIcon":Landroid/graphics/drawable/Icon;
    .end local v14    # "itemsSize":I
    .end local v16    # "messagingIcon":Landroid/graphics/drawable/Icon;
    .end local v17    # "musicIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "assistPackageInfo":Landroid/content/pm/PackageInfo;
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v19, v0

    .line 461
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    .line 460
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .local v7, "assistPackageInfo":Landroid/content/pm/PackageInfo;
    goto/16 :goto_0

    .line 462
    .local v7, "assistPackageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v12

    .line 463
    .local v12, "e":Landroid/os/RemoteException;
    sget-object v19, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "PackageManagerService is dead"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 559
    .end local v7    # "assistPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v9    # "browserIcon":Landroid/graphics/drawable/Icon;
    .restart local v10    # "calendarIcon":Landroid/graphics/drawable/Icon;
    .restart local v11    # "contactsIcon":Landroid/graphics/drawable/Icon;
    .restart local v13    # "emailIcon":Landroid/graphics/drawable/Icon;
    .restart local v14    # "itemsSize":I
    .restart local v16    # "messagingIcon":Landroid/graphics/drawable/Icon;
    .restart local v17    # "musicIcon":Landroid/graphics/drawable/Icon;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mApplicationItemsComparator:Ljava/util/Comparator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 560
    new-instance v19, Landroid/view/KeyboardShortcutGroup;

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0f0584

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 563
    const/16 v21, 0x1

    .line 560
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v15, v2}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Z)V

    return-object v19
.end method

.method private getHumanReadableModifiers(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;
    .locals 7
    .param p1, "info"    # Landroid/view/KeyboardShortcutInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyboardShortcutInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 794
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v2, "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;>;"
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getModifiers()I

    move-result v1

    .line 796
    .local v1, "modifiers":I
    if-nez v1, :cond_0

    .line 797
    return-object v2

    .line 799
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 800
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 801
    .local v3, "supportedModifier":I
    and-int v4, v1, v3

    if-eqz v4, :cond_1

    .line 802
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 803
    new-instance v5, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;

    .line 804
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 803
    invoke-direct {v5, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    :goto_1
    not-int v4, v3

    and-int/2addr v1, v4

    .line 799
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 806
    :cond_2
    new-instance v5, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;

    .line 807
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 806
    invoke-direct {v5, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 812
    .end local v3    # "supportedModifier":I
    :cond_3
    if-eqz v1, :cond_4

    .line 814
    return-object v6

    .line 816
    :cond_4
    return-object v2
.end method

.method private getHumanReadableShortcutKeys(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;
    .locals 7
    .param p1, "info"    # Landroid/view/KeyboardShortcutInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyboardShortcutInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 760
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getHumanReadableModifiers(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;

    move-result-object v3

    .line 761
    .local v3, "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;>;"
    if-nez v3, :cond_0

    .line 762
    return-object v6

    .line 764
    :cond_0
    const/4 v2, 0x0

    .line 765
    .local v2, "displayLabelString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 766
    .local v1, "displayLabelDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    move-result v4

    if-lez v4, :cond_2

    .line 767
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 785
    .end local v1    # "displayLabelDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "displayLabelString":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_7

    .line 786
    new-instance v4, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;

    invoke-direct {v4, v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_1
    :goto_1
    return-object v3

    .line 768
    .restart local v1    # "displayLabelDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "displayLabelString":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 769
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "displayLabelDrawable":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .local v1, "displayLabelDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 770
    .local v1, "displayLabelDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 771
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "displayLabelString":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .local v2, "displayLabelString":Ljava/lang/String;
    goto :goto_0

    .line 774
    .local v2, "displayLabelString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v4

    if-nez v4, :cond_5

    .line 775
    return-object v3

    .line 777
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v0

    .line 778
    .local v0, "displayLabel":C
    if-eqz v0, :cond_6

    .line 779
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .local v2, "displayLabelString":Ljava/lang/String;
    goto :goto_0

    .line 781
    .local v2, "displayLabelString":Ljava/lang/String;
    :cond_6
    return-object v6

    .line 787
    .end local v0    # "displayLabel":C
    .end local v1    # "displayLabelDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "displayLabelString":Ljava/lang/String;
    :cond_7
    if-eqz v2, :cond_1

    .line 788
    new-instance v4, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .locals 4
    .param p1, "intentCategory"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 567
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getPackageInfoForIntent(Landroid/content/Intent;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 571
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v2, :cond_0

    .line 573
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 574
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 572
    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    return-object v2

    .line 576
    :cond_0
    return-object v3
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/KeyboardShortcuts;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 132
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    return-object v0
.end method

.method private getPackageInfoForIntent(Landroid/content/Intent;I)Landroid/content/pm/PackageInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 582
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 583
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 582
    invoke-interface {v2, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 584
    .local v1, "handler":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    .line 585
    :cond_0
    return-object v5

    .line 587
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 588
    .end local v1    # "handler":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PackageManagerService is dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    return-object v5
.end method

.method private getSystemShortcuts()Landroid/view/KeyboardShortcutGroup;
    .locals 6

    .prologue
    const/high16 v5, 0x10000

    .line 396
    new-instance v0, Landroid/view/KeyboardShortcutGroup;

    .line 397
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f057d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 396
    invoke-direct {v0, v1, v2}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Z)V

    .line 398
    .local v0, "systemGroup":Landroid/view/KeyboardShortcutGroup;
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    .line 399
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f0f057e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 400
    const/16 v3, 0x42

    .line 398
    invoke-direct {v1, v2, v3, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 402
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    .line 403
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0580

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 404
    const/16 v3, 0x43

    .line 402
    invoke-direct {v1, v2, v3, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 406
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    .line 407
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f0f057f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 408
    const/16 v3, 0x3d

    .line 409
    const/4 v4, 0x2

    .line 406
    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 410
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    .line 411
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 412
    const v3, 0x7f0f0581

    .line 411
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 413
    const/16 v3, 0x2a

    .line 410
    invoke-direct {v1, v2, v3, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 415
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    .line 416
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 417
    const v3, 0x7f0f0582

    .line 416
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 418
    const/16 v3, 0x4c

    .line 415
    invoke-direct {v1, v2, v3, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 420
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    .line 421
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 422
    const v3, 0x7f0f0583

    .line 421
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 423
    const/16 v3, 0x3e

    .line 420
    invoke-direct {v1, v2, v3, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 425
    return-object v0
.end method

.method private handleShowKeyboardShortcuts(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 606
    .local p1, "keyboardShortcutGroups":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v5, 0x10302d2

    invoke-direct {v0, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 607
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 608
    const-string/jumbo v5, "layout_inflater"

    .line 607
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 610
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040054

    const/4 v5, 0x0

    .line 609
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 612
    .local v2, "keyboardShortcutsView":Landroid/view/View;
    const v4, 0x7f13014d

    .line 611
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->populateKeyboardShortcuts(Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 613
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 614
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDialogCloseListener:Landroid/content/DialogInterface$OnClickListener;

    const v5, 0x7f0f03a3

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 615
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 616
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 617
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 618
    .local v3, "keyboardShortcutsWindow":Landroid/view/Window;
    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 619
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 605
    return-void
.end method

.method private static isShowing()Z
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadResources(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x2

    const v6, 0x7f0f0563

    const v5, 0x7f0f057c

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 170
    const v1, 0x7f0f0564

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 169
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 172
    const v1, 0x7f0f0565

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 171
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 174
    const v1, 0x7f0f0566

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    .line 173
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 176
    const v1, 0x7f0f0567

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    .line 175
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 178
    const v1, 0x7f0f0568

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    .line 177
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 180
    const v1, 0x7f0f0569

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    .line 179
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 182
    const v1, 0x7f0f056a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    .line 181
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "."

    const/16 v2, 0x38

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 185
    const v1, 0x7f0f056b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    .line 184
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 187
    const v1, 0x7f0f056c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    .line 186
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 189
    const v1, 0x7f0f056d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    .line 188
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 191
    const v1, 0x7f0f056e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    .line 190
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 193
    const v1, 0x7f0f056f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    const/16 v2, 0x55

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 195
    const v1, 0x7f0f0570

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x56

    .line 194
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 197
    const v1, 0x7f0f0571

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57

    .line 196
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 199
    const v1, 0x7f0f0572

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    const/16 v2, 0x58

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 201
    const v1, 0x7f0f0573

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    const/16 v2, 0x59

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 203
    const v1, 0x7f0f0574

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    const/16 v2, 0x5a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 205
    const v1, 0x7f0f0575

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 207
    const v1, 0x7f0f0576

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5d

    .line 206
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 209
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "A"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 208
    const/16 v2, 0x60

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 211
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "B"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 210
    const/16 v2, 0x61

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 213
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "C"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 212
    const/16 v2, 0x62

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 215
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "X"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 214
    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 217
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Y"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 216
    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 219
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Z"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 218
    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 221
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "L1"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 220
    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 223
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "R1"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 222
    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 225
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "L2"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 224
    const/16 v2, 0x68

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 227
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "R2"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 226
    const/16 v2, 0x69

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 229
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Start"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 228
    const/16 v2, 0x6c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 231
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Select"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 230
    const/16 v2, 0x6d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 233
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Mode"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 232
    const/16 v2, 0x6e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 235
    const v1, 0x7f0f0577

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    .line 234
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Esc"

    const/16 v2, 0x6f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "SysRq"

    const/16 v2, 0x78

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Break"

    const/16 v2, 0x79

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Scroll Lock"

    const/16 v2, 0x74

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 241
    const v1, 0x7f0f0578

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7a

    .line 240
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 243
    const v1, 0x7f0f0579

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7b

    .line 242
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 245
    const v1, 0x7f0f057a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7c

    .line 244
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F1"

    const/16 v2, 0x83

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F2"

    const/16 v2, 0x84

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F3"

    const/16 v2, 0x85

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F4"

    const/16 v2, 0x86

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F5"

    const/16 v2, 0x87

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F6"

    const/16 v2, 0x88

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F7"

    const/16 v2, 0x89

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F8"

    const/16 v2, 0x8a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F9"

    const/16 v2, 0x8b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F10"

    const/16 v2, 0x8c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F11"

    const/16 v2, 0x8d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F12"

    const/16 v2, 0x8e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 259
    const v1, 0x7f0f057b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8f

    .line 258
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 261
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 260
    const/16 v2, 0x90

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 263
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 262
    const/16 v2, 0x91

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 265
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "2"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 264
    const/16 v2, 0x92

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 267
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 266
    const/16 v2, 0x93

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 269
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "4"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 268
    const/16 v2, 0x94

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 271
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 270
    const/16 v2, 0x95

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 273
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "6"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 272
    const/16 v2, 0x96

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 275
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "7"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 274
    const/16 v2, 0x97

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 277
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "8"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 276
    const/16 v2, 0x98

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 279
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "9"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 278
    const/16 v2, 0x99

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 281
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "/"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 280
    const/16 v2, 0x9a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 283
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "*"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 282
    const/16 v2, 0x9b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 285
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "-"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 284
    const/16 v2, 0x9c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 287
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "+"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 286
    const/16 v2, 0x9d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 289
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "."

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 288
    const/16 v2, 0x9e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 291
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, ","

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 290
    const/16 v2, 0x9f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 293
    new-array v1, v3, [Ljava/lang/Object;

    .line 294
    const v2, 0x7f0f056d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 293
    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 292
    const/16 v2, 0xa0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 296
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "="

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 295
    const/16 v2, 0xa1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 298
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "("

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 297
    const/16 v2, 0xa2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 300
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, ")"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 299
    const/16 v2, 0xa3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u534a\u89d2/\u5168\u89d2"

    const/16 v2, 0xd3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u82f1\u6570"

    const/16 v2, 0xd4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u7121\u5909\u63db"

    const/16 v2, 0xd5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u5909\u63db"

    const/16 v2, 0xd6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u304b\u306a"

    const/16 v2, 0xd7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Meta"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Ctrl"

    const/16 v2, 0x1000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Alt"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Shift"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Sym"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Fn"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 315
    const v1, 0x7f02018c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x43

    .line 314
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 317
    const v1, 0x7f02018e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x42

    .line 316
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 319
    const v1, 0x7f020195

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x13

    .line 318
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 321
    const v1, 0x7f020191

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x16

    .line 320
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 323
    const v1, 0x7f02018d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x14

    .line 322
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 325
    const v1, 0x7f02018f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x15

    .line 324
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    .line 328
    const v1, 0x7f020190

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 327
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 332
    const v1, 0x7f020194

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x3d

    .line 331
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 334
    const v1, 0x7f020193

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x3e

    .line 333
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 336
    const v1, 0x7f020192

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x9a

    .line 335
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    .line 338
    const v1, 0x7f02018b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 337
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    return-void
.end method

.method private populateKeyboardShortcuts(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 38
    .param p1, "keyboardShortcutsLayout"    # Landroid/widget/LinearLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    .local p2, "keyboardShortcutGroups":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "current_sec_active_themepackage"

    invoke-static/range {v33 .. v34}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 628
    .local v13, "isOpenThemeActivated":Ljava/lang/String;
    const/4 v11, 0x0

    .line 630
    .local v11, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 639
    .local v11, "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v17

    .line 641
    .local v17, "keyboardShortcutGroupsSize":I
    const v33, 0x7f040053

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 640
    move/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 643
    .local v32, "shortcutsKeyView":Landroid/widget/TextView;
    const/16 v33, 0x0

    const/16 v34, 0x0

    .line 642
    invoke-virtual/range {v32 .. v34}, Landroid/widget/TextView;->measure(II)V

    .line 644
    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v25

    .line 646
    .local v25, "shortcutKeyTextItemMinWidth":I
    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v33

    .line 647
    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v34

    .line 646
    sub-int v33, v33, v34

    .line 648
    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v34

    .line 646
    sub-int v23, v33, v34

    .line 649
    .local v23, "shortcutKeyIconItemHeightWidth":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v10, v0, :cond_a

    .line 650
    const/16 v18, 0x0

    .line 651
    .local v18, "keyboardShortcutsCategoryTitleLayout":Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    .line 652
    .local v7, "categoryTitle":Landroid/widget/TextView;
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/KeyboardShortcutGroup;

    .line 655
    .local v9, "group":Landroid/view/KeyboardShortcutGroup;
    const v33, 0x7f040050

    const/16 v34, 0x0

    .line 654
    move/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .end local v18    # "keyboardShortcutsCategoryTitleLayout":Landroid/widget/LinearLayout;
    check-cast v18, Landroid/widget/LinearLayout;

    .line 657
    .local v18, "keyboardShortcutsCategoryTitleLayout":Landroid/widget/LinearLayout;
    const v33, 0x7f04004f

    const/16 v34, 0x0

    .line 656
    move/from16 v0, v33

    move-object/from16 v1, v18

    move/from16 v2, v34

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .end local v7    # "categoryTitle":Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 658
    .local v7, "categoryTitle":Landroid/widget/TextView;
    invoke-virtual {v9}, Landroid/view/KeyboardShortcutGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 668
    invoke-virtual {v9}, Landroid/view/KeyboardShortcutGroup;->isSystemGroup()Z

    move-result v33

    if-eqz v33, :cond_2

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0b0103

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getColor(I)I

    move-result v33

    .line 668
    :goto_2
    move/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 673
    :cond_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 675
    const v33, 0x7f04004e

    .line 676
    const/16 v34, 0x0

    .line 674
    move/from16 v0, v33

    move-object/from16 v1, v18

    move/from16 v2, v34

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 677
    .local v19, "separator":Landroid/view/View;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 678
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 684
    const v33, 0x7f040051

    const/16 v34, 0x0

    .line 683
    move/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 685
    .local v20, "shortcutContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v9}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v14

    .line 686
    .local v14, "itemsSize":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_3
    if-ge v15, v14, :cond_8

    .line 687
    invoke-virtual {v9}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/KeyboardShortcutInfo;

    .line 688
    .local v12, "info":Landroid/view/KeyboardShortcutInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getHumanReadableShortcutKeys(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;

    move-result-object v27

    .line 689
    .local v27, "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;>;"
    if-nez v27, :cond_3

    .line 691
    sget-object v33, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    const-string/jumbo v34, "Keyboard Shortcut contains unsupported keys, skipping."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 631
    .end local v7    # "categoryTitle":Landroid/widget/TextView;
    .end local v9    # "group":Landroid/view/KeyboardShortcutGroup;
    .end local v10    # "i":I
    .end local v12    # "info":Landroid/view/KeyboardShortcutInfo;
    .end local v14    # "itemsSize":I
    .end local v15    # "j":I
    .end local v17    # "keyboardShortcutGroupsSize":I
    .end local v18    # "keyboardShortcutsCategoryTitleLayout":Landroid/widget/LinearLayout;
    .end local v19    # "separator":Landroid/view/View;
    .end local v20    # "shortcutContainer":Landroid/widget/LinearLayout;
    .end local v23    # "shortcutKeyIconItemHeightWidth":I
    .end local v25    # "shortcutKeyTextItemMinWidth":I
    .end local v27    # "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;>;"
    .end local v32    # "shortcutsKeyView":Landroid/widget/TextView;
    .local v11, "inflater":Landroid/view/LayoutInflater;
    :cond_1
    new-instance v8, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    .line 632
    const v34, 0x1030132

    .line 631
    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-direct {v8, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 634
    .local v8, "ct":Landroid/view/ContextThemeWrapper;
    const-string/jumbo v33, "layout_inflater"

    .line 633
    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    check-cast v11, Landroid/view/LayoutInflater;

    .local v11, "inflater":Landroid/view/LayoutInflater;
    goto/16 :goto_0

    .line 670
    .end local v8    # "ct":Landroid/view/ContextThemeWrapper;
    .restart local v7    # "categoryTitle":Landroid/widget/TextView;
    .restart local v9    # "group":Landroid/view/KeyboardShortcutGroup;
    .restart local v10    # "i":I
    .restart local v17    # "keyboardShortcutGroupsSize":I
    .restart local v18    # "keyboardShortcutsCategoryTitleLayout":Landroid/widget/LinearLayout;
    .restart local v23    # "shortcutKeyIconItemHeightWidth":I
    .restart local v25    # "shortcutKeyTextItemMinWidth":I
    .restart local v32    # "shortcutsKeyView":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0b0104

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getColor(I)I

    move-result v33

    goto/16 :goto_2

    .line 694
    .restart local v12    # "info":Landroid/view/KeyboardShortcutInfo;
    .restart local v14    # "itemsSize":I
    .restart local v15    # "j":I
    .restart local v19    # "separator":Landroid/view/View;
    .restart local v20    # "shortcutContainer":Landroid/widget/LinearLayout;
    .restart local v27    # "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;>;"
    :cond_3
    const v33, 0x7f04004c

    .line 695
    const/16 v34, 0x0

    .line 694
    move/from16 v0, v33

    move-object/from16 v1, v20

    move/from16 v2, v34

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v31

    .line 697
    .local v31, "shortcutView":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v33

    if-eqz v33, :cond_4

    .line 699
    const v33, 0x7f130149

    .line 698
    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 700
    .local v21, "shortcutIcon":Landroid/widget/ImageView;
    invoke-virtual {v12}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 701
    const/16 v33, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 705
    .end local v21    # "shortcutIcon":Landroid/widget/ImageView;
    :cond_4
    const v33, 0x7f13014a

    .line 704
    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 706
    .local v29, "shortcutKeyword":Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 722
    const v33, 0x7f13014b

    .line 721
    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    .line 723
    .local v22, "shortcutItemsContainer":Landroid/view/ViewGroup;
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v28

    .line 724
    .local v28, "shortcutKeysSize":I
    const/16 v16, 0x0

    .local v16, "k":I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    .line 725
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;

    .line 726
    .local v30, "shortcutRepresentation":Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_6

    .line 728
    const v33, 0x7f040052

    .line 729
    const/16 v34, 0x0

    .line 727
    move/from16 v0, v33

    move-object/from16 v1, v22

    move/from16 v2, v34

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 731
    .local v24, "shortcutKeyIconView":Landroid/widget/ImageView;
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 730
    move/from16 v0, v23

    move/from16 v1, v23

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 732
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 733
    .local v6, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v34

    .line 734
    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v35

    .line 733
    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 735
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 736
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 737
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 724
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v24    # "shortcutKeyIconView":Landroid/widget/ImageView;
    :cond_5
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 738
    :cond_6
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;->string:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_5

    .line 740
    const v33, 0x7f040053

    .line 741
    const/16 v34, 0x0

    .line 739
    move/from16 v0, v33

    move-object/from16 v1, v22

    move/from16 v2, v34

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 742
    .local v26, "shortcutKeyTextView":Landroid/widget/TextView;
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 743
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;->string:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 747
    .end local v26    # "shortcutKeyTextView":Landroid/widget/TextView;
    .end local v30    # "shortcutRepresentation":Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;
    :cond_7
    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 749
    .end local v12    # "info":Landroid/view/KeyboardShortcutInfo;
    .end local v16    # "k":I
    .end local v22    # "shortcutItemsContainer":Landroid/view/ViewGroup;
    .end local v27    # "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;>;"
    .end local v28    # "shortcutKeysSize":I
    .end local v29    # "shortcutKeyword":Landroid/widget/TextView;
    .end local v31    # "shortcutView":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 750
    add-int/lit8 v33, v17, -0x1

    move/from16 v0, v33

    if-ge v10, v0, :cond_9

    .line 752
    const v33, 0x7f04004d

    .line 753
    const/16 v34, 0x0

    .line 751
    move/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 754
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 623
    .end local v7    # "categoryTitle":Landroid/widget/TextView;
    .end local v9    # "group":Landroid/view/KeyboardShortcutGroup;
    .end local v14    # "itemsSize":I
    .end local v15    # "j":I
    .end local v18    # "keyboardShortcutsCategoryTitleLayout":Landroid/widget/LinearLayout;
    .end local v19    # "separator":Landroid/view/View;
    .end local v20    # "shortcutContainer":Landroid/widget/LinearLayout;
    :cond_a
    return-void
.end method

.method private retrieveKeyCharacterMap(I)V
    .locals 6
    .param p1, "deviceId"    # I

    .prologue
    const/4 v5, -0x1

    .line 349
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    .line 350
    .local v3, "inputManager":Landroid/hardware/input/InputManager;
    if-eq p1, v5, :cond_0

    .line 351
    invoke-virtual {v3, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 352
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-eqz v2, :cond_0

    .line 353
    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 354
    return-void

    .line 357
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 358
    .local v0, "deviceIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 359
    aget v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 362
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    move-result v4

    if-eq v4, v5, :cond_1

    invoke-virtual {v2}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 363
    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 364
    return-void

    .line 358
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_2
    invoke-virtual {v3, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 368
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 348
    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceId"    # I

    .prologue
    .line 136
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/KeyboardShortcuts;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcuts(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 135
    return-void

    .line 138
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private showKeyboardShortcuts(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->retrieveKeyCharacterMap(I)V

    .line 373
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 374
    new-instance v2, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    .line 373
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->requestKeyboardShortcuts(Landroid/content/Context;Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    .line 371
    return-void
.end method

.method private showKeyboardShortcutsDialog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 597
    .local p1, "keyboardShortcutGroups":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    return-void
.end method

.method public static toggle(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceId"    # I

    .prologue
    .line 145
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 144
    return-void

    .line 149
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->show(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
