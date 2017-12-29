.class final Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;
.super Landroid/preference/Preference;
.source "PhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyboardInfoPreference"
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;

.field private final mImSubtypeName:Ljava/lang/CharSequence;

.field private final mImeName:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;

    .prologue
    .line 557
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 553
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->collator:Ljava/text/Collator;

    .line 558
    iget-object v0, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImeName:Ljava/lang/CharSequence;

    .line 559
    iget-object v0, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v1, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {p1, v0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->getImSubtypeName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    .line 560
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImeName:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->formatDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mLayout:Landroid/hardware/input/KeyboardLayout;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mLayout:Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 556
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;-><init>(Landroid/content/Context;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;)V

    return-void
.end method

.method private compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "lhs"    # Ljava/lang/CharSequence;
    .param p2, "rhs"    # Ljava/lang/CharSequence;

    .prologue
    .line 614
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    const/4 v0, 0x0

    return v0

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->collator:Ljava/text/Collator;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 618
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 619
    const/4 v0, -0x1

    return v0

    .line 621
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private static formatDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imeName"    # Ljava/lang/CharSequence;
    .param p2, "imSubtypeName"    # Ljava/lang/CharSequence;

    .prologue
    .line 578
    if-nez p2, :cond_0

    .line 579
    return-object p1

    .line 582
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u200f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "displayName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 583
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_1
    const v1, 0x7f0b18db

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "imSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 570
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 571
    .local v1, "imeName":Ljava/lang/CharSequence;
    invoke-static {p0, p1, p2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->getImSubtypeName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 572
    .local v0, "imSubtypeName":Ljava/lang/CharSequence;
    invoke-static {p0, v1, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->formatDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method private static getImSubtypeName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "imSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v0, 0x0

    .line 593
    if-eqz p2, :cond_0

    .line 595
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 594
    invoke-virtual {p2, p0, v0, v1}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 597
    :cond_0
    return-object v0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .param p1, "object"    # Landroid/preference/Preference;

    .prologue
    .line 602
    instance-of v2, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    if-nez v2, :cond_0

    .line 603
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v2

    return v2

    :cond_0
    move-object v0, p1

    .line 605
    check-cast v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    .line 606
    .local v0, "another":Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;
    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImeName:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImeName:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 607
    .local v1, "result":I
    if-nez v1, :cond_1

    .line 608
    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 610
    :cond_1
    return v1
.end method
