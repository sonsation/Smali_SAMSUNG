.class public Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;
.super Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;
.source "SeslDropDownPreference.java"


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    sget v0, Lcom/samsung/android/support/sesl/R$attr;->seslDropdownPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 135
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference$1;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->updateEntries()V

    .line 63
    return-void
.end method

.method private updateEntries()V
    .locals 6

    .prologue
    .line 91
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 94
    .local v0, "c":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "c":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public findSpinnerIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 110
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 111
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 112
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 111
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->notifyChanged()V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 124
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 68
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->updateEntries()V

    .line 74
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 102
    return-void
.end method
