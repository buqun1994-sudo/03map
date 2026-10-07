package android.webkit

/** Test-only subclass colocated with Android's package-private error constructor. */
class FixtureWebResourceError : WebResourceError() {
    override fun getErrorCode() = WebViewClient.ERROR_HOST_LOOKUP
    override fun getDescription(): CharSequence = "Fixture network failure"
}
