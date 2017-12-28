.class public Lcom/android/vcard/VCardEntry$PhotoStateData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoStateData"
.end annotation


# instance fields
.field public final mPhotoState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "photoState"    # Ljava/lang/String;

    .prologue
    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1232
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$PhotoStateData;->mPhotoState:Ljava/lang/String;

    .line 1233
    return-void
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 3
    .param p2, "backReferenceIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1239
    .local p1, "operationList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1240
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id= ? AND mimetype = \"vnd.android.cursor.item/photo\""

    .line 1241
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 1240
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1242
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 1243
    const-string v1, "data11"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoStateData;->mPhotoState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1244
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1254
    if-ne p0, p1, :cond_0

    .line 1255
    const/4 v1, 0x1

    .line 1261
    :goto_0
    return v1

    .line 1257
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$PhotoStateData;

    if-nez v1, :cond_1

    .line 1258
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1260
    check-cast v0, Lcom/android/vcard/VCardEntry$PhotoStateData;

    .line 1261
    .local v0, "photoStateData":Lcom/android/vcard/VCardEntry$PhotoStateData;
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PhotoStateData;->mPhotoState:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/vcard/VCardEntry$PhotoStateData;->mPhotoState:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1276
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->PHOTOSTATE:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getPhotoState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoStateData;->mPhotoState:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoStateData;->mPhotoState:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoStateData;->mPhotoState:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoStateData;->mPhotoState:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "photoState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PhotoStateData;->mPhotoState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
