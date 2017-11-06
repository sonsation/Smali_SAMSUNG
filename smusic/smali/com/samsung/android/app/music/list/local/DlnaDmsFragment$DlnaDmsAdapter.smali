.class public Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "DlnaDmsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DlnaDmsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 181
    return-void
.end method


# virtual methods
.method public getDlnaDmsDeviceId(I)Ljava/lang/String;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, "providerId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 203
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    move-object v4, v3

    .line 215
    .end local v3    # "providerId":Ljava/lang/String;
    .local v4, "providerId":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 207
    .end local v4    # "providerId":Ljava/lang/String;
    .restart local v3    # "providerId":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "provider_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 208
    .local v2, "index":I
    const/4 v5, -0x1

    if-le v2, v5, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 210
    :try_start_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_1
    :goto_1
    move-object v4, v3

    .line 215
    .end local v3    # "providerId":Ljava/lang/String;
    .restart local v4    # "providerId":Ljava/lang/String;
    goto :goto_0

    .line 211
    .end local v4    # "providerId":Ljava/lang/String;
    .restart local v3    # "providerId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDlnaDmsDeviceName(I)Ljava/lang/String;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 219
    const/4 v3, 0x0

    .line 220
    .local v3, "providerName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 221
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    move-object v4, v3

    .line 233
    .end local v3    # "providerName":Ljava/lang/String;
    .local v4, "providerName":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 225
    .end local v4    # "providerName":Ljava/lang/String;
    .restart local v3    # "providerName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "provider_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 226
    .local v2, "index":I
    const/4 v5, -0x1

    if-le v2, v5, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 228
    :try_start_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_1
    :goto_1
    move-object v4, v3

    .line 233
    .end local v3    # "providerName":Ljava/lang/String;
    .restart local v4    # "providerName":Ljava/lang/String;
    goto :goto_0

    .line 229
    .end local v4    # "providerName":Ljava/lang/String;
    .restart local v3    # "providerName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 194
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->mText1Index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 195
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->mText1Index:I

    .line 196
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/util/UiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    .line 185
    if-nez p3, :cond_0

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ab

    const/4 v2, 0x0

    .line 187
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 189
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object v0
.end method
