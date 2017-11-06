.class Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "SeslPreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private resId:I

.field private widgetResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;)V
    .locals 1
    .param p1, "other"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget v0, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->resId:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->resId:I

    .line 100
    iget v0, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    .line 101
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    .line 102
    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 91
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->resId:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->resId:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 91
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 106
    instance-of v2, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    if-nez v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 109
    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    .line 110
    .local v0, "other":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;
    iget v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v3, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->resId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v3, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    .line 112
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 117
    const/16 v0, 0x11

    .line 118
    .local v0, "result":I
    iget v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->resId:I

    add-int/lit16 v0, v1, 0x20f

    .line 119
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    add-int v0, v1, v2

    .line 120
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 121
    return v0
.end method
