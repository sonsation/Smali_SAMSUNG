.class Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/CharSequence;

.field private final type:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;

    return-object v0
.end method

.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p1, "providerName"    # Ljava/lang/CharSequence;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    .line 163
    iput-object p2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)I
    .locals 4
    .param p1, "another"    # Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 168
    const-string/jumbo v0, "com.osp.app.signin"

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    return v2

    .line 171
    :cond_0
    const-string/jumbo v0, "com.osp.app.signin"

    iget-object v1, p1, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    return v3

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 176
    return v2

    .line 178
    :cond_2
    iget-object v0, p1, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 179
    return v3

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 166
    check-cast p1, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->compareTo(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)I

    move-result v0

    return v0
.end method
