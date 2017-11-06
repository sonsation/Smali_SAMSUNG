.class public Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;
.super Landroid/app/DialogFragment;
.source "LegalInformationDialog.java"


# static fields
.field private static final KEY_MANDATORY_CHECKED_STATES:Ljava/lang/String; = "key_mandatory_checked_states"

.field private static final KEY_OPTIONAL_CHECKED_STATES:Ljava/lang/String; = "key_optional_checked_states"

.field private static final MARKETING_AGREEMENT_LINK:Ljava/lang/String; = "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_marketingagreement.html"

.field private static final PRIVACY_AGREEMENT_LINK:Ljava/lang/String; = "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_privacy_information_agree.html"

.field private static final PRIVACY_AGREEMENT_TO_3RD_LINK:Ljava/lang/String; = "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_privacy_information_3rd.html"

.field public static final TAG:Ljava/lang/String;

.field private static final TERMS_OF_SERVICE_LINK:Ljava/lang/String; = "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_tnc.html"


# instance fields
.field private mAcceptAll:Landroid/widget/CheckBox;

.field private final mMandatoryAgreements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private mMarketingAgreement:Landroid/widget/CheckBox;

.field private mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

.field private final mNetworkStateListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

.field private final mOptionalAgreements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mMandatoryAgreements:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mOptionalAgreements:Ljava/util/List;

    .line 266
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$7;-><init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mNetworkStateListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mMarketingAgreement:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->updateViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mAcceptAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mMandatoryAgreements:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mOptionalAgreements:Ljava/util/List;

    return-object v0
.end method

.method private initAcceptAll(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    const v2, 0x7f120178

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "item":Landroid/view/View;
    const v2, 0x7f120078

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 206
    .local v1, "textView":Landroid/widget/TextView;
    const v2, 0x7f0a0271

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 207
    const v2, 0x7f1200c9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mAcceptAll:Landroid/widget/CheckBox;

    .line 208
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mAcceptAll:Landroid/widget/CheckBox;

    new-instance v3, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$5;-><init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
.end method

.method private initMandatoryAgreements(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f1200c9

    const v5, 0x7f120078

    .line 162
    const v3, 0x7f120174

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 163
    .local v1, "item":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 164
    .local v2, "textView":Landroid/widget/TextView;
    const v3, 0x7f0a01c8

    const-string v4, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_tnc.html"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->initText(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 165
    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mMandatoryAgreements:Ljava/util/List;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const v3, 0x7f120175

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 168
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 169
    .restart local v2    # "textView":Landroid/widget/TextView;
    const v3, 0x7f0a0245

    const-string v4, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_privacy_information_agree.html"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->initText(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 171
    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mMandatoryAgreements:Ljava/util/List;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const v3, 0x7f120176

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 175
    .restart local v2    # "textView":Landroid/widget/TextView;
    const v3, 0x7f0a0246

    const-string v4, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_privacy_information_3rd.html"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->initText(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 177
    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mMandatoryAgreements:Ljava/util/List;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mMandatoryAgreements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 180
    .local v0, "checkBox":Landroid/widget/CheckBox;
    new-instance v4, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$3;-><init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 187
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_0
    return-void
.end method

.method private initOptionalAgreements(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    const v2, 0x7f120177

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, "item":Landroid/view/View;
    const v2, 0x7f120078

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 192
    .local v1, "textView":Landroid/widget/TextView;
    const v2, 0x7f0a0273

    const-string v3, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_marketingagreement.html"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->initText(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 193
    const v2, 0x7f1200c9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mMarketingAgreement:Landroid/widget/CheckBox;

    .line 194
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mOptionalAgreements:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mMarketingAgreement:Landroid/widget/CheckBox;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mMarketingAgreement:Landroid/widget/CheckBox;

    new-instance v3, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$4;-><init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void
.end method

.method private initText(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 5
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "textId"    # I
    .param p3, "linkUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 253
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "text":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 255
    .local v0, "content":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 256
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    new-instance v2, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$6;

    invoke-direct {v2, p0, p3}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$6;-><init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-void
.end method

.method private restoreCheckStates([ZLjava/util/List;)V
    .locals 4
    .param p1, "checkedStates"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z",
            "Ljava/util/List",
            "<",
            "Landroid/widget/CheckBox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p2, "checkBoxes":Ljava/util/List;, "Ljava/util/List<Landroid/widget/CheckBox;>;"
    if-eqz p1, :cond_0

    .line 245
    array-length v1, p1

    .line 246
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 247
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    aget-boolean v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    return-void
.end method

.method private updateViews()V
    .locals 5

    .prologue
    .line 224
    const/4 v1, 0x1

    .line 225
    .local v1, "mandatoryAgreedAll":Z
    const/4 v2, 0x1

    .line 226
    .local v2, "optionalAgreedAll":Z
    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mMandatoryAgreements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 227
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 232
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mOptionalAgreements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 233
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    .line 234
    const/4 v2, 0x0

    .line 238
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mAcceptAll:Landroid/widget/CheckBox;

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    check-cast v3, Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 240
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 241
    return-void

    .line 238
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 136
    if-eqz p1, :cond_0

    .line 137
    const-string v0, "key_mandatory_checked_states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mMandatoryAgreements:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->restoreCheckStates([ZLjava/util/List;)V

    .line 139
    const-string v0, "key_optional_checked_states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mOptionalAgreements:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->restoreCheckStates([ZLjava/util/List;)V

    .line 142
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 86
    .local v0, "a":Landroid/app/Activity;
    instance-of v4, v0, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 87
    check-cast v4, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object v4, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 90
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040054

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 92
    .local v3, "v":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->initMandatoryAgreements(Landroid/view/View;)V

    .line 93
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->initOptionalAgreements(Landroid/view/View;)V

    .line 94
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->initAcceptAll(Landroid/view/View;)V

    .line 96
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a0270

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 99
    const v4, 0x7f0a008a

    new-instance v5, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$1;-><init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    const v4, 0x7f0a022f

    new-instance v5, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$2;-><init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 126
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 127
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 128
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->setCancelable(Z)V

    .line 129
    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mMandatoryAgreements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 69
    .local v2, "size":I
    new-array v0, v2, [Z

    .line 70
    .local v0, "checkStates":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 71
    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mMandatoryAgreements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    const-string v3, "key_mandatory_checked_states"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 75
    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mOptionalAgreements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 76
    new-array v0, v2, [Z

    .line 77
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 78
    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mOptionalAgreements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    :cond_1
    const-string v3, "key_optional_checked_states"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 81
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->updateViews()V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mNetworkStateListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 151
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->mNetworkStateListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 158
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 159
    return-void
.end method
